BLOG_POSTS  ?= ./content/posts/zh-cn
POSTS_NUMS  := $(shell ls -l $(BLOG_POSTS) | grep "^-" | wc -l)
NEW_FILE_ID := $(shell printf "%03d\n" $(POSTS_NUMS))
CMD = hugo
GIT = git

build: $(BLOG_POSTS)
	@$(CMD)

dev: $(BLOG_POSTS)
	@$(CMD) server

new: $(BLOG_POSTS)
	@$(CMD) new posts/zh-cn/$(NEW_FILE_ID).md

commit:
	@$(GIT) add .
	@$(GIT) commit -m "Update: $(shell date +%Y-%m-%d)"

push: commit
	@$(GIT) push

clean:
	@$(GIT) clean -Xdf
