ARGS=-vet -no-bounds-check
ARGS_DBG=-vet -debug
EXE_NAME=argy_example.exe

build:
	odin build ./demo $(ARGS) -out:$(EXE_NAME)

build_dbg:
	odin build ./demo $(ARGS_DBG) -out:$(EXE_NAME)

run:
	odin run ./demo $(ARGS_DBG) -out:$(EXE_NAME)

test:
	odin test ./tests -vet -sanitize:address -define:ODIN_TEST_SHORT_LOGS=false -define:ODIN_TEST_ALWAYS_REPORT_MEMORY=true