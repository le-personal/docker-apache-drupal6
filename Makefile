CURRENT_DIRECTORY := $(shell pwd)

build:
	@docker build --tag=iiiepe/apache-drupal6 $(CURRENT_DIRECTORY)

.PHONY: build
