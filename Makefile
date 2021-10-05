dev:
	watchexec "yarn --ignore-engines test"

.PHONY: test
test:
	yarn test