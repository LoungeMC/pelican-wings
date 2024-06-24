#!/usr/bin/env bash

function patchIt() {
  if [[ $# -eq 0 ]]; then
    echo "Please provide the patch file path as an argument."
    exit 1
  fi

  BASE=$(pwd)
  patchFile="$BASE/patches/$1"  # The first argument is the path to the patch file

  # Check if the patch file exists
  if [[ ! -f $patchFile ]]; then
      echo "The patch file $patchFile does not exist."
      exit 1
  fi

  cd wings || exit #Change directory to the wings directory

  # Apply the patch
  git apply -v $patchFile

  # Check the apply result
  if [[ $? -ne 0 ]]; then
      echo "Failed to apply the patch."
      exit 1
  fi

  echo "The patch has been applied successfully."
}

patchIt 0001-different-data-sftp-dirs