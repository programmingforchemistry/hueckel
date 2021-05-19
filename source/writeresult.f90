!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!                                                                      !
! This file is part of Hueckel.                                        !
!                                                                      !
! Hueckel is free software; you can redistribute it and/or modify      !
! it under the terms of the GNU Lesser General Public License, v. 2.1. !
! Hueckel is distributed in the hope that it will be useful, but it    !
! is provided "as is" and without any express or implied warranties.   !
! For more details see the full text of the license in the file        !
! LICENSE or in <http://www.gnu.org/licenses/>.                        !
!                                                                      !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
subroutine writeresult(natoms,title,hmatrix)
use global
implicit none


integer,intent(in)::natoms
character(len=80),intent(in)::title
real(kind=8),dimension(maxatoms,maxatoms),intent(in)::hmatrix

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
