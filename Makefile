WATCH = watchexec --watch templates --watch test
YARN = yarn --ignore-engines

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