export SHELLSPEC_VERSION := 0.28.1
export PATH := $(PATH):$(PWD)/bin

bashly-generate:
	bashly generate

auto-regenerate:
	watchexec -r -e yml,sh make bashly-generate

install-bashly:
	bundle install
	bundle binstubs bashly --standalone

install-shellspec:
	wget https://github.com/shellspec/shellspec/releases/download/$(SHELLSPEC_VERSION)/shellspec-dist.tar.gz -O /tmp/shellspec.tar.gz
	tar -xzf /tmp/shellspec.tar.gz -C $(PWD)/vendor
	ln -s $(PWD)/vendor/shellspec/shellspec bin/shellspec --force

bashly-init:
	bashly init

tests:
	shellspec --load-path $(PWD)
