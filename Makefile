.PHONY: all docs

all: docs

# Generate documentation with hugo
docs:
	@hugo
	@mv public docs

# Clean generated documentation
clean:
	@rm -rf public docs
