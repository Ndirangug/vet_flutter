generate:
	protoc --dart_out=grpc:. ./lib/generated/service.proto --plugin=protoc-gen-dart=/home/georgen/flutter/.pub-cache/bin/protoc-gen-dart

run:
	export GRPC_HOST=192.168.43.86 && export GRPC_PORT=5001 && 	flutter run --no-sound-null-safety

apk:
	flutter build apk --no-sound-null-safety