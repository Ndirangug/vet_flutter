generate:
	protoc --dart_out=grpc:. ./lib/generated/service.proto --plugin=protoc-gen-dart=/home/georgen/flutter/.pub-cache/bin/protoc-gen-dart

run:
	flutter run --no-sound-null-safety