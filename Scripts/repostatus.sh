#!/bin/bash
git diff --name-only HEAD HEAD~1 | grep manifest.json
if [$? == 0]; then
    exit 0    
else
    exit 1
fi
