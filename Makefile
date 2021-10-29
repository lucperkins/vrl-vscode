WATCH = watchexec --watch templates --watch test
YARN = yarn --ignore-engines
VRL_INFO = https://vector.dev/index.json
VRL_FUNC_JSON= ./data/functions.json

clean:
	rm *.vsix

dev:
	$(WATCH) "make generate && make test"

generate:
	$(YARN) generate-snippets && $(YARN) generate-tmLanguage

.PHONY: test
test:
	$(YARN) test

package:
	$(YARN) package

publish: package
	$(YARN) publish

fetch-vrl-data:
	curl $(VRL_INFO) | jq '.vrl | {functions: .functions | keys}' > "$(VRL_FUNC_JSON)"
