########################################################
# Makefile for GhostTracker
#
# useful targets:
#   make rubocop             -- source code checks
#   make ci                  -- run rspec tests
########################################################

rubocop:
	rubocop --format emacs spec app

bundle:
	bundle

rebuild-test-db:
	rm -rf db/test.sqlite
	RAILS_ENV=test bundle exec rake db:setup

rspec:
	bundle exec rspec

ci: bundle rebuild-test-db rspec

all: ci
