
LIBDIR := deps/i-d-template
include deps/i-d-template/main.mk

$(LIBDIR)/main.mk:
	@echo "Updating submodules"
	git submodule update --init --recursive

