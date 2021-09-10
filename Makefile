BLOG_POSTS := ./content/posts
NEW_FILE_ID := $(shell printf "%03d\n" $(shell ls -l ${BLOG_POSTS} | grep "^-" | wc -l))
CMD = hugo

build:
	@${CMD}

dev:
	@${CMD} server

push:
	@git add .
	@git commit -m "Update: $(shell date +%Y-%m-%d)"
	@git push

new:
	@hugo new posts/${NEW_FILE_ID}.md

clean:
	@rm --force --recursive public
	@rm --force --recursive resources
