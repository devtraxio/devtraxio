#!/bin/bash

DISTFOLDER=public
git subtree push --prefix "$DISTFOLDER" origin gh-pages
