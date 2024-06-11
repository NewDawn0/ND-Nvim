{ lib }:
with lib;
let
  flattenAttrs = attrs: prefix:
    foldl' (acc: key:
      let
        val = getAttr key attrs;
        fullKey = if prefix == "" then key else "${prefix}.${key}";
      in if isAttrs val then
        recursiveUpdate acc (flattenAttrs val fullKey)
      else
        recursiveUpdate acc { "${fullKey}" = val; }) { } (attrNames attrs);

  listToLua = lst:
    let
      elem = map (e:
        if isAttrs e then
          concatStringsSep "\n"
          (mapAttrsToList (key: val: "${keyFmt key} = ${valFmt val}")
            (flattenAttrs e ""))
        else if isList e then
          "{" + listToLua e + "}"
        else
          valFmt e) lst;
    in concatStringsSep "," elem;

  keyFmt = key: if isString key then key else ''"${key}"'';
  valFmt = val:
    if isString val then
      ''"${val}"''
    else if isBool val then
      if val then "true" else "false"
    else if isList val then
      "{" + listToLua val + "}"
    else
      builtins.toString val;

  nixToLua = attr:
    concatStringsSep "\n"
    (mapAttrsToList (key: val: "${keyFmt key} = ${valFmt val}")
      (flattenAttrs attr ""));

  keybindsToLua = keybinds: mode: prefix:
    lib.concatStringsSep "\n" (lib.mapAttrsToList (key: val:
      "vim.keymap.set('${mode}', '${key}', '${val.action}', { desc = '${val.desc}' })")
      (lib.getAttr prefix keybinds));
  setKeybinds = k:
    (keybindsToLua k.keybinds "n" "normal") + "\n"
    + (keybindsToLua k.keybinds "v" "visual");

  readFile = file: builtins.readFile file;

  mkPlugin = plugin: config: {
    inherit plugin config;
    type = "lua";
  };
in { inherit nixToLua readFile mkPlugin setKeybinds; }
