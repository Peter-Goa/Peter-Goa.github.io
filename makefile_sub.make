PHONY:update
update:
	git init
	git remote add origin https://github.com/Peter-Goa/Peter-Goa.github.io.git
	git pull origin master
	del /F/S/Q/A:-H .\
	rd /S/Q .\
	xcopy /E/Y ..\Peter-Goa.github.io\_site .\
	@echo Coping was complete. Begin updateing master branch
	git add ./
	git commit -m"the general update"
	git push origin master