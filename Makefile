CC=gcc
CXX=g++
INC+= 
LIB+= 

CFLAGS+= -g

TARGET= ring_test
ALL:$(TARGET)

OBJ= rte_ring.o

$(TARGET):$(OBJ)  main.o 
	$(CC)	$(CFLAGS) -o $@ $^ $(LIB)

%.o: %.c
	$(CC)  $(CFLAGS) $(INC) -c -o $@ $<

clean:
	rm -f *.o
	rm -f $(TARGET) 

install:
