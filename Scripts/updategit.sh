#!/bin/bash
rm -rf ../manifest-old.json
cp ../manifest-new.json ../manifest-old.json
git commit -am "Updated"
git push -u origin a09-gitops