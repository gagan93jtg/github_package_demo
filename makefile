default: build

build:
	docker build . -t gem_publisher:latest

publish:
	docker run -e BUNDLE_RUBYGEMS__PKG__GITHUB__COM=$(GITHUB_PAT):x-oauth-basic -e GITHUB_PAT=$(GITHUB_PAT) -e GITHUB_USERNAME=$(GITHUB_USERNAME) gem_publisher
