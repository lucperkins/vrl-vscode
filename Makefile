dev:
	watchexec "yarn --ignore-engines test"

publish:
	yarn publish

.PHONY: test
test:
	yarn test