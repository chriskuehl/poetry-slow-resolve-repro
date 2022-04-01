SHELL := /bin/bash

.PHONY: build-repo
build-repo:
	rm -r pypi/{simple,index.html,changelog}
	venv/bin/dumb-pypi --package-list <(ls pypi/wheels) --output-dir pypi --packages-url /wheels/
