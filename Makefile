.PHONY: all build package

# Build the PS5 prototype on the configured remote Linux server.
all: build

build:
	bash build-remote.sh

# Build first, then package the release archive and copy it into artifacts/.
package: build
	bash package-remote.sh
