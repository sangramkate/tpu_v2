export SPE_HOME ../..
SPE_HOME=../..
export SPE_COMPILER ${SPE_HOME}/compiler-vector
SPE_COMPILER=${SPE_HOME}/compiler-vector
export SPE_COMPILER_LIBPATH ${SPE_COMPILER}/lib/gcc/mips-mips-elf/4.2.0/soft-float
SPE_COMPILER_LIBPATH=${SPE_COMPILER}/lib/gcc/mips-mips-elf/4.2.0/soft-float


TARGET=kozyrakis_filt3x3
SRC=kozyrakis_filt3x3.c vector_filt3x3.S
OBJS=kozyrakis_filt3x3.o vector_filt3x3.o
include $(SPE_HOME)/apps/Makefile.inc
include $(SPE_HOME)/apps/Makefile.sim


######################## For cross compiled GCC ##########################

all: $(TARGET)

# START must be linked first!!! Since RTL model blindly executes from 400000
$(TARGET): $(OBJS)
	@$(LD) $(START) $(OBJS) $(LDFLAGS) -o $(TARGET)

.c.o: 
	@$(CC) $(CFLAGS) -c -o $*.o $<
.S.o: 
	@$(CC) $(ASFLAGS) -c -o $*.o $<
.s.o: 
	@$(AS) $(ASFLAGS) -o $*.o $<
.c.s:	
	@$(CC) $(CFLAGS) -S -o $*.s $<

clean: clean_sim
	@rm -f $(TARGET) $(OBJS) $(TARGET).srec 
