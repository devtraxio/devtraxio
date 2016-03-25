#!/bin/bash

DOMAIN="devtrax.io"
DISTFOLDER="public"

echo $DOMAIN > "$DISTFOLDER/CNAME"
git add "$DISTFOLDER/CNAME"
git commit -m "Adding CNAME"
git subtree push --prefix "$DISTFOLDER" origin gh-pages
