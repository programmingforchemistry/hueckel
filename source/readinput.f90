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
subroutine readinput(natoms,title)
use global
implicit none


integer,intent(out)::natoms
character(len=80),intent(out)::title

integer i

read(*,*) natoms
read(*,*) title
do i=1,natoms
        read(*,*) element(i),coordinates(i,1:3)
enddo


return
end subroutine readinput

