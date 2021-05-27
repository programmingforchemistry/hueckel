subroutine writeresult(title,hmatrix,eigval,ncarbon)
use global
use molecule
implicit none

integer::natoms,ncarbon
character(len=80)::title
real(kind=8),dimension(maxatoms,maxatoms)::hmatrix
real(kind=8),dimension(maxatoms)::eigval


integer::i

print *,"Input structure"
print *
print *,title
print 100
do i=1,molecel%natoms
        print 200,i, molecel%atoms(i)%element,molecel%atoms(i)%coordinates(1:3)
enddo

print *,"Eigenvalues"
print *
do i=1,ncarbon
        print *,i,eigval(i)

enddo


print *,"Hueckel matrix"
print *
do i=1,ncarbon
        print *,i,hmatrix(i,1:ncarbon)
enddo

print *
print *,"Happy landing"

100 format(X,'NATOM',X,'Element',3X,'X',9X,'Y',9X'Z')
200 format(X,I3,4X,A2,3X,3F10.5)


return
end subroutine writeresult
