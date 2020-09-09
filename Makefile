_dir := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

cache_path ?= $(_dir)/cache
output_path ?= $(_dir)/covid_berlin_data.csv
output_hosp_path ?= $(_dir)/covid_berlin_data_incl_hospitalized.csv

_cmd := covid-berlin-scraper -a "$(cache_path)" -v

.PHONY: download-feed
download-feed:  ## Download current feed
	$(_cmd) download-feed

.PHONY: download-district-table
download-district-table:  ## Download current district table
	$(_cmd) download-district-table

.PHONY: download-dashboard
download-dashboard:  ## Download current dashboard
	$(_cmd) download-dashboard

.PHONY: download-archives
download-archives:  ## Download archives
	$(_cmd) download-archives

.PHONY: parse-press-releases
parse-press-releases:  ## Parse press releases
	$(_cmd) parse-press-releases -o "$(output_path)" --output-hosp "$(output_hosp_path)"

.PHONY: setup
setup:  ## Install dependencies
	pip install -r requirements.txt

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'
