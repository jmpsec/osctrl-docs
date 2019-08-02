.PHONY: all docs serve

all: docs

# Generate documentation with hugo
docs:
	make clean
	@hugo

# Generate draft content and serve it with hugo
serve:
	make clean
	hugo -D server --disableFastRender

# Clean generated documentation
clean:
	@rm -rf docs
