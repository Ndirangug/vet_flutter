generate:
	protoc --dart_out=grpc:. ./lib/generated/service.proto --plugin=protoc-gen-dart=/home/georgen/flutter/.pub-cache/bin/protoc-gen-dart

run:
	export GRPC_HOST=vet-backend-fybfguvuua-uc.a.run.app && export GRPC_PORT=443 && 	flutter run --no-sound-null-safety

apk:
	export GRPC_HOST=vet-backend-fybfguvuua-uc.a.run.app && export GRPC_PORT=443 && flutter build apk --no-sound-null-safety