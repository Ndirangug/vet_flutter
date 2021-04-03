## Shipping package
## Assumes user is on MacOS, if other OS, please change PROTO_ROOT_DIR to the path of protobuf installation
PROTO_ROOT_DIR = $(shell brew --prefix)/Cellar/protobuf/3.6.0/include
PROJECT_NAME = hello-grpc

## Dart requires you to manually ship all google provided proto files too.
_gendart:
	@mkdir -p model/gen/ship/dart
	@protoc -I=lib/grpc --dart_out=grpc:lib/grpc lib/grpc/service.proto
	@protoc -I$(PROTO_ROOT_DIR) --dart_out=model/gen/ship/dart $(PROTO_ROOT_DIR)/google/protobuf/*.proto


gen: _gendart

build: get gen
	@env CGO_ENABLED=0 GOOS=linux GOARCH=386 go build -ldflags '-w -extldflags "-static"' -o build/${PROJECT_NAME}_linux_amd64 .
	@env GOARCH=amd64 go build -ldflags '-w -extldflags "-static"' -o build/${PROJECT_NAME}_macosx_amd64 .

get:
	@go get -u github.com/golang/dep/cmd/dep
	@dep ensure

install: get gen
	@cp config_template.json config.jso

generate:
	protoc --dart_out=. ./lib/grpc/service.proto --plugin=protoc-gen-dart=/home/georgen/flutter/.pub-cache/bin/protoc-gen-dart