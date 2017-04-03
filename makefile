PHONY:update
update:
	@echo Build begining
	bundle exec jekyll build
	git add ./
	git commit -m"the general update"
	git push origin dev
	@echo Updating was complete. Begin coping the files of the _site
	mkdir ..\copy_temp
	copy .\makefile_sub.make ..\copy_temp\makefile
	cd ..\copy_temp
	#make update
	del /F/S/Q ..\copy_temp
	rd /S/Q ..\copy_temp
	@echo Good！Everything were complete