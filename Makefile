clean:
	rm -rf docs

copy: clean
	mkdir -p docs
	cd ../mortgage_calc && npm run build
	cp -r ../mortgage_calc/dist/* ./docs

git-commit: copy
	git add .
	git commit -am "update data"
