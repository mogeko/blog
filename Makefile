BLOG_POSTS  := ./content/posts
POSTS_NUMS  := $(shell ls -l ${BLOG_POSTS} | grep "^-" | wc -l)
NEW_FILE_ID := $(shell printf "%03d\n" ${POSTS_NUMS})
CMD = hugo

build:
	@${CMD}

dev:
	@${CMD} server

push:
	@git add .
	@git commit -m "Update: $(shell date +%Y-%m-%d)"

new:
	@hugo new posts/${NEW_FILE_ID}.md

clean:
	@rm --force --recursive public
	@rm --force --recursive resources
