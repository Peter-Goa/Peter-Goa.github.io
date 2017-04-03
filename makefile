PHONY:update
update:
	@echo Build begining
	bundle exec jekyll build
	git add ./
	git commit -m"the general update"
	git push origin dev
	@echo Updating was complete. Begin coping the files of the _site
	mkdir ..\copy_temp
	cd ..\copy_temp;git init;git remote add origin https://github.com/Peter-Goa/Peter-Goa.github.io.git;xcopy /E/Y ..\Peter-Goa.github.io\_site ..\copy_temp;@echo Coping was complete. Begin updateing master branch;git add ./;git commit -m"the general update";git push origin master
	del /F/S/Q ..\copy_temp
	rd /S/Q ..\copy_temp
	@echo Good！Everything were complete