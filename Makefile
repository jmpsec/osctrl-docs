.PHONY: all docs

all: docs

# Generate documentation with hugo
docs:
	make clean
	@hugo

# Clean generated documentation
clean:
	@rm -rf docs
