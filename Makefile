.PHONY = server
server:
	podman run --rm \
		--volume="$$PWD:/srv/jekyll" \
		--publish=[::1]:4000:4000 \
		jekyll/jekyll \
		jekyll serve --destination "/tmp/_site/"
