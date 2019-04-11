#!/bin/bash

echo "Checking broccoli"

if broccoli --version > /dev/null; then
  echo "broccoli is already installed."
else
  echo "installing broccoli"
  if node -v > /dev/null; then
    if npm -v > /dev/null; then
      echo "installing broccoli - global"
      npm install -g broccoli
      npm install -g broccoli-cli
    else
      echo "npm is not installed"
    fi
  else
    echo "node is not installed"
  fi
fi