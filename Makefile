## Makefile
## cli front end for jekyll site(s)
##
## 2022, kb3c.uX


.PHONY:
	@echo "usage:\n\t\tmake [target]\n\n\t\tTARGETS:\n\t\t\tconfig\n\t\t\tinstall\n\t\t\tstart\n\n"

all: config install serve_once

start: serve_once
	@printf "And service has ended.\n"

devstart: serve_dev
	@printf "And dev reload is end.\n"

getbundler:
	@gem install bundler

config:
	@bundle config set --local path '.vendor/bundle'

install: config
	@bundle install

serve_once: install
	@bundle exec jekyll serve

serve_dev: install
	@bundle exec jekyll serve --livereload


