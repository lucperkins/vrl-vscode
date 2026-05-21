WATCH = watchexec --watch templates --watch test
NPM = npm run
VRL_INFO = https://vector.dev/index.json
VRL_FUNC_JSON= ./data/functions.json

clean:
	rm *.vsix

dev:
	$(WATCH) "make generate && make test"

generate:
	$(NPM) generate-snippets && $(NPM) generate-tmLanguage

.PHONY: test
test:
	$(NPM) test

package:
	$(NPM) package

publish: package
	$(NPM) publish

fetch-vrl-data:
	curl $(VRL_INFO) | jq '.vrl | {functions: .functions | keys}' > "$(VRL_FUNC_JSON)"
