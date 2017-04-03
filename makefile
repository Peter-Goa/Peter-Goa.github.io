PHONY:build
build:	
	echo 开始构建网站...
	@bundle exec jekyll build
	echo 网站构建完成，开始更新dev分支...
	@git add ./
	@git commit -m"the general update"
	@git push origin dev
	echo dev分支更新完成，开始复制文件...
	@mkdir ../copy_temp
	@copy ./_site  ../copy_temp
	echo 复制文件完成，开始更新master分支...
	@git checkout master
	@copy /Y ../copy_temp ./
	@del /F /S /Q ../copy_temp
	@git add ./
	@git commit -m"the general update"
	@git push origin master
	@git checkout dev
	echo Good！网站更新工作完成！