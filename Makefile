_dir := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
_project_dir := $(_dir)/coronavirus-berlin-scraper

cache_path := $(_dir)/cache
config_path := $(_project_dir)/config.sample.json
output_path := $(_dir)/coronavirus_data_berlin.csv

run: $(output_path)  ## Run

$(output_path):
	"$(_project_dir)/coronavirus-berlin-scraper" \
		--config "$(config_path)" \
		--cache "$(cache_path)" \
		--output "$@" \
		--verbose

.PHONY: clean
clean:  ## Clean
	-rm "$(output_path)"

.PHONY: setup
setup:
	cd "$(_project_dir)" && $(MAKE) setup

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'
