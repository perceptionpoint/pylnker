.PHONY: build publish

build:
	rm -rf ./dist
	rm -rf ./build
	rm -rf /.eggs
	python3 setup.py sdist bdist_wheel --universal

publish:
	twine upload dist/*