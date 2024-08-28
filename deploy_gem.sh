#!/bin/bash

bundle
bundle exec rspec || { echo 'build failed' ; exit 1; }
gem build github_package_demo.gemspec --output github_package_demo.gem
gem push --debug -V github_package_demo.gem --host https://rubygems.pkg.github.com/gagan93jtg --key github
