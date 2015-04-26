########################################################
# Makefile for GhostTracker
#
# useful targets:
#   make clean               -- throw away garbage
#   make rubocop             -- source code checks
#   make ci                  -- run rspec tests
########################################################

clean:
	@echo "#############################################"
	@echo "# Cleaning up garbage"
	@echo "#############################################"
	rm -rf coverage

rubocop:
	@echo "#############################################"
	@echo "# Running rubocop code analyzer"
	@echo "#############################################"
	rubocop spec app

bundle:
	@echo "#############################################"
	@echo "# Installing bundle"
	@echo "#############################################"
	bundle

rebuild-test-db:
	@echo "#############################################"
	@echo "# Rebuilding test database"
	@echo "#############################################"
	rm -rf db/test.sqlite
	RAILS_ENV=test bundle exec rake db:setup

rspec:
	@echo "#############################################"
	@echo "# Running rspec tests"
	@echo "#############################################"
	RAILS_ENV=test bundle exec rspec

ci: bundle rebuild-test-db rspec

all: ci
