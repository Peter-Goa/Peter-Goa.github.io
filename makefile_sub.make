PHONY:update
	git init
	git remote add origin https://github.com/Peter-Goa/Peter-Goa.github.io.git
	xcopy /E/Y ..\Peter-Goa.github.io\_site ..\copy_temp
	@echo Coping was complete. Begin updateing master branch
	git add ./
	git commit -m"the general update"
	git push origin master