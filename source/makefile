########################################################################
# This file is part of Hueckel.                                        #
#                                                                      #
# Hueckel is free software; you can redistribute it and/or modify      #
# it under the terms of the GNU Lesser General Public License, v. 2.1. #
# Hueckel is distributed in the hope that it will be useful, but it    #
# is provided "as is" and without any express or implied warranties.   #
# For more details see the full text of the license in the file        #
# LICENSE or in <http://www.gnu.org/licenses/>.                        #
########################################################################

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

