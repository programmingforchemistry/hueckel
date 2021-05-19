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
real(kind=8) function rij(i,j)
use global
implicit none

integer,intent(in)::i,j

real(kind=8),dimension(3)::dij

dij=coordinates(i,1:3)-coordinates(j,1:3)
rij=sqrt(dot_product(dij,dij))

return
end function rij
