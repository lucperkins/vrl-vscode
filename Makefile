NPM = npm run
VRL_INFO = https://vector.dev/index.json
VRL_FUNC_JSON = ./data/functions.json

.PHONY: check clean dev fetch-vrl-data generate package publish test

check:
	$(NPM) check
	$(NPM) check:generated
	$(NPM) test

clean:
	rm -f *.vsix

dev:
	watchexec --watch templates --watch test --watch syntaxes "make generate && make test"

generate:
	$(NPM) generate

test:
	$(NPM) test

package:
	$(NPM) package

publish:
	$(NPM) publish

fetch-vrl-data:
	curl --fail --silent --show-error $(VRL_INFO) | jq '.vrl | {functions: .functions | keys}' > "$(VRL_FUNC_JSON)"
