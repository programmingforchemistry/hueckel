FC= gfortran
#FOPT=    -fpp -O2  -g -qopenmp -mkl
FOPT= -O2  
LIB=-llapack -lblas

OBJ= hueckel.o


hueckel.x: $(OBJ)
	$(FC) $(FOPT) $(LIB) -o $@ $(OBJ)

%.o: %.f90
	$(FC)  $(FOPT) -c $<

clean:
	rm -rf *.o *.x

