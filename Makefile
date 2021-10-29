WATCH = watchexec --watch templates --watch test
YARN = yarn --ignore-engines
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
	curl https://vector.dev/index.json | jq .vrl.functions | jq 'keys' > "$(VRL_FUNC_JSON)"
