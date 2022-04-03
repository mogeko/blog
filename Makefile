BLOG_POSTS  = $(shell pwd)/content/posts/zh-cn

CMD = env hugo
IDE = env code
GIT = env git

build: $(BLOG_POSTS)
	@$(CMD)

dev: $(BLOG_POSTS)
	@-$(CMD) server

new: $(BLOG_POSTS)
	@$(CMD) new $(BLOG_POSTS)/$(NEW_FILE_ID).md
	@$(IDE) $(BLOG_POSTS)/$(NEW_FILE_ID).md

commit:
	@$(GIT) add .
	@$(GIT) commit -m "Update: $(shell date +%Y-%m-%d)"

push: commit
	@$(GIT) push

clean:
	@$(GIT) clean -Xdf
