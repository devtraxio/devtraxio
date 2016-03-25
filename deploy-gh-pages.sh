#!/bin/bash

DOMAIN="devtrax.io"
DISTFOLDER="public"

echo 'Running Hugo'
hugo --theme="hugo-agency-theme"

echo 'Ensuring CNAME is set'
echo $DOMAIN > "$DISTFOLDER/CNAME"
git add "$DISTFOLDER/CNAME"
git commit -m "Adding CNAME"

echo "Pushing to Gh Pages @ ${DOMAIN}"
git subtree push --prefix "$DISTFOLDER" origin gh-pages
