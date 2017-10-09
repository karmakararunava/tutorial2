# makefile to produce hello

# variables
CC = gcc
OBJCFLAGS = -Wall -g -c
BINCFLAGS = -Wall -o

# files
SRC = *.c
OBJ = *.o
BIN = hello

# headers
INCS = -I./

#linking
LIBS = 
LDFLAGS = 

# clean
RM = rm -f

# target produes the binary 
$(BIN): $(OBJ)
	$(CC) $(BINCFLAGS) $(BIN) $(OBJ) $(LIBS) $(LDFLAGS)

# target produces object files
$(OBJ): $(SRC)
	$(CC) $(OBJCFLAGS) $(SRC) $(INCS)

#target removes the binary and the object files
.PHONY = clean
clean:
	$(RM) $(OBJ) $(BIN)
