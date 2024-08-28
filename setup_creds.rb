# frozen_string_literal: true

require 'fileutils'

github_pat = ENV.fetch('GITHUB_PAT')
github_username = ENV.fetch('GITHUB_USERNAME')

# write gemrc

gemrc = <<~YAML
  ---
  :backtrace: false
  :bulk_threshold: 1000
  :sources:
  - https://rubygems.org/
  - https://#{github_username}:#{github_pat}@rubygems.pkg.github.com/loconav-tech/
  :update_sources: true
  :verbose: true
YAML

File.write('/root/.gemrc', gemrc)

# write credentials to ~/.gem/credentials

FileUtils.mkdir_p '/root/.gem'

credentials = <<~YAML
  ---
  :github: Bearer #{github_pat}
YAML

File.write('/root/.gem/credentials', credentials)

# Change permissions
`chmod 0600 /root/.gem/credentials`
