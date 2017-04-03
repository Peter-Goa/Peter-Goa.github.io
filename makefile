all:
	bundle exec jekyll build
	git add ./
	git commit -m"the general update"
	git push origin dev