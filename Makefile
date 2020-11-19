generate:
	yarn generate

test: generate
	yarn test

build_parser: generate
	cc -o ./build/parser.so -I./src src/parser.c -shared -Os -lstdc++ -fPIC

