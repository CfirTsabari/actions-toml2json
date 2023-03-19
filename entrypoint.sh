#!/bin/bash

set -e

if [[ -z "${INPUT_TOML_FILE_PATH}" ]]; then
  echo "The INPUT_TOML_FILE_PATH environment variable is not set. Aborting."
  exit 1
fi

if [[ ! -f "${INPUT_TOML_FILE_PATH}" ]]; then
  echo "The TOML file at path ${INPUT_TOML_FILE_PATH} does not exist. Aborting."
  exit 1
fi

json=$(python3 -c "import sys, toml, json; json.dump(toml.load(open(sys.argv[1])), sys.stdout)" "${INPUT_TOML_FILE_PATH}")


echo "json-output=$json" >> $GITHUB_OUTPUT