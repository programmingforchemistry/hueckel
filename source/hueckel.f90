program hueckel
implicit none

integer :: natoms
integer,parameter:: maxatoms=100
character(len=80)::title
character(len=2),dimension(maxatoms)::element
real(kind=8),dimension(maxatoms,3)::coordinates

integer::i


read(*,*) natoms
read(*,*) title
do i=1,natoms
        read(*,*) element(i),coordinates(i,1:3)
enddo

print *,"Input structure"
print *
print *,title
print 100
do i=1,natoms
        print 200,i,element(i),coordinates(i,1:3)
enddo

print *
print *,"Happy landing"

100 format(X,'NATOM',X,'Element',3X,'X',9X,'Y',9X'Z')
200 format(X,I3,4X,A2,3X,3F10.5)

end program hueckel





