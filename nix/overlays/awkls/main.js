#!/usr/bin/env node
//  _   _ ____        _   _       _
// | \ | |  _ \      | \ | |_   _(_)_ __ ___
// |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
// | |\  | |_| |_____| |\  |\ V /| | | | | | |
// |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
// Copyright: 2024 NewDawn0
//
// Author: NewDawn0 (https://github.com/NewDawn0)

// Taken the awk-language-server bin
const parseArgs = require("minimist");
const server = require("awk-language-server/out/server");
function usage(exitCode) {
  console.log(
    "Usage:\n\tawk-language-server [OPTIONS]\n\n" +
      "Options:\n" +
      "\t-h|--help\t\tGet this message\n" +
      "\t-v|--version\t\tGet current version number\n" +
      "\t--noIndex\t\tSkip indexing. Only opened files will be analyzed\n",
  );
  process.exit(exitCode);
}
function printVersion() {
  const packageJson = require("../package.json");
  console.log(packageJson.version);
  process.exit(0);
}
const args = parseArgs(process.argv.slice(2), {
  alias: {
    help: "h",
    version: "v",
  },
  default: {
    help: false,
    version: false,
    noIndex: false,
  },
  boolean: ["help", "version", "noIndex"],
  unknown: (key) => {
    if (!key.startsWith("-")) return false;
    console.log(`Unknown key: ${key}\n`);
    usage(2);
  },
});
if (args.help) usage(0);
if (args.version) printVersion();
const options = {
  noIndex: args.noIndex,
};
(0, server.main)(options);
// Avoid writing to stdout at this point as it's reserved for client/server communication
process.stderr.write("Language Server is started");
