#!/bin/sh
echo -ne '\033c\033]0;LimitedSpaceGJ54\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/LimitedSpaceGJ54.x86_64" "$@"
