FC= gfortran
#FOPT=    -fpp -O2  -g -qopenmp -mkl
FOPT= -O2  
LIB=-llapack -lblas

OBJ= hueckel.o rij.o readinput.o writeresult.o global.o


hueckel.x: $(OBJ)
	$(FC) $(FOPT) $(LIB) -o $@ $(OBJ)

%.o: %.f90 global.mod
	$(FC)  $(FOPT) -c $<

global.mod: global.f90
	$(FC) -c $<

clean:
	rm -rf *.o *.x

