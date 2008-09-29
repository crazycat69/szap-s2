CC=gcc

SRC=lnb.c szap-s2.c
HED=lnb.h
OBJ=lnb.o szap-s2.o

BIND=/usr/local/bin/
INCLUDE=-I../s2/linux/include/linux/dvb

TARGET=szap-s2

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLG) $(OBJ) -o $(TARGET) $(CLIB) 

$(OBJ): $(HED)

install: all
	cp $(TARGET) $(BIND)

clean:
	rm -f $(OBJ) $(TARGET) *~

%.o: %.c
	$(CC) $(INCLUDE) -c $< -o $@
