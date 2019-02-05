#!/bin/bash

rm .git/hooks/post-commit
ln -s post-commit.sh .git/hooks/post-commit
