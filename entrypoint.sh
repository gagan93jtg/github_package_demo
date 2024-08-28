#!/bin/bash

if [[ -z "$GITHUB_USERNAME" ]]; then
    echo "Must provide GITHUB_USERNAME for publishing gem"
    exit 1
fi

if [[ -z "$GITHUB_PAT" ]]; then
    echo "Must provide GITHUB_PAT for publishing gem"
    exit 1
fi

ruby setup_creds.rb

exec "$@"
