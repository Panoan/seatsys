VERSION := $(shell git describe --tags --always --dirty)
APPNAME := seatsys
OUTPUT := $(shell pwd)/bin
LDFLAGS := -ldflags "-X main.version=$(VERSION)"
BUILD := go build $(LDFLAGS)
ASSETS := ui/build
GOFILES := $(shell find . -type f -name '*.go' -not -path "./vendor/*")
GOFILES += $(ASSETS)

.PHONY: run build
build:  $(OUTPUT)/$(APPNAME)

run: build
	$(OUTPUT)/$(NAME)