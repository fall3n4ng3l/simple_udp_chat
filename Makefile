CC = gcc
CFLAGS = -Wall -pedantic  
BIN = udpserver udpclient

all: clean $(BIN)

%: src/%.c
	@echo "Building $@...."
	@$(CC) $(CFLAGS) -o $@ $<

clean:
	@echo "Cleaning..."
	@rm -fv udp*