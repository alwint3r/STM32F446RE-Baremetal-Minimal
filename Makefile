TARGET = main

CC = arm-none-eabi-gcc

CCFLAGS = -mthumb -mcpu=cortex-m4 -Wall

LDFLAGS = --specs=nosys.specs -nostdlib -lgcc

OBJS = core.o

%.o: %.S
	$(CC) -x assembler-with-cpp $(CCFLAGS) -c -o $@ $<

$(TARGET).elf: $(OBJS)
	$(CC) $^ $(CCFLAGS) $(LDFLAGS) -T linker.ld -o $@

all: $(TARGET).elf

clean:
	rm -f *.o *.elf