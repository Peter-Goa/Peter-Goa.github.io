PHONY:build
build:
	echo Build begining
	bundle exec jekyll build
	git add ./
	git commit -m"the general update"
	git push origin dev
	echo Updating was complete. Begin coping the files of the _site
	mkdir ..\copy_temp
	copy .\_site  ..\copy_temp
	echo Coping was complete. Begin updateing master branch
	git checkout master
	copy /Y ..\copy_temp .\
	del /F /S /Q ..\copy_temp
	git add ./
	git commit -m"the general update"
	git push origin master
	git checkout dev
	echo Good！Everything were complete