_dir := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
_project_dir := $(_dir)/coronavirus-berlin-scraper

export cache_path := $(_dir)/cache
export output_path := $(_dir)/coronavirus_data_berlin.csv

%:
	cd "$(_project_dir)" && $(MAKE) $@
