#!/usr/bin/env bash
# add as dependency to your project
deno add jsr:@hugojosefson/macos-sierra-virtualbox

# ...or...

# create and enter a directory for the script
mkdir -p "macos-sierra-virtualbox"
cd       "macos-sierra-virtualbox"

# download+extract the script, into current directory
curl -fsSL "https://github.com/hugojosefson/macos-sierra-virtualbox/tarball/main" \
  | tar -xzv --strip-components=1
