subroutine writeresult(natoms,title,hmatrix)
use global
implicit none


integer::natoms
character(len=80)::title
real(kind=8),dimension(maxatoms,maxatoms)::hmatrix

integer::i

print *,"Input structure"
print *
print *,title
print 100
do i=1,natoms
        print 200,i,element(i),coordinates(i,1:3)
enddo


print *,"Hueckel matrix"
print *
do i=1,natoms
        print *,i,hmatrix(i,1:natoms)
enddo

print *
print *,"Happy landing"

100 format(X,'NATOM',X,'Element',3X,'X',9X,'Y',9X'Z')
200 format(X,I3,4X,A2,3X,3F10.5)


return
end subroutine writeresult
