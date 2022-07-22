#!/bin/bash

# takes a haskell file and sets up GHCID to run only watch that file

ghcid "--command=ghci $1"
