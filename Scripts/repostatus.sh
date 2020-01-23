#!/bin/bash
git diff --name-only HEAD HEAD~1 | grep manifest.json
if [$? == 0] then
    return 0    
else
    return 1
fi
