real(kind=8) function rij(i,j)
use global
implicit none

integer,intent(in)::i,j

real(kind=8),dimension(3)::dij

dij=coordinates(i,1:3)-coordinates(j,1:3)
rij=sqrt(dot_product(dij,dij))

return
end function rij
