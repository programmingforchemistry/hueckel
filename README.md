# hueckel
Hueckel program for course "Introduction to High Level Programming for Chemistry Students"
(c) 2020-2021 Markus Oppel, University of Vienna

This project contains the files of the first example program (hueckel). The final program is supposed
read a molecule through a xzy file. It then sets up the hueckel matrix by checking for connectivities between different C atoms
(C=C bonds). The resulting hueckel matrix is diagonalized by using a standard LAPACK diagonalization routine.
Finally, the resuling molecular orbital (MO) energies are printed.

Structure of the project:

- source directory:
  containing the necessary fortran files
- test directory
  containing example xyz input files
  
 The program should be compilable using any modern Fortran compiler (gfortran, ifort, pgf90).
 
 
