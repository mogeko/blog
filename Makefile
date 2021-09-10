BLOG_POSTS = ./content/posts
CMD = hugo

build:
	${CMD}

dev:
	${CMD} server

push:
	git add .
	git commit -m "Update: $(shell date +%Y-%m-%d)"
	# git push


# file_num = "test"
# new:
	# @echo $(shell ls -l ${BLOG_POSTS} | grep "^-" | wc -l | awk '{printf "%03d\n", $1}')
