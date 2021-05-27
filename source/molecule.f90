module molecule
use global

type atom
        character(len=2)::element
        real(kind=8),dimension(3)::coordinates
end type atom

type molec
        integer::natoms
        type(atom),dimension(maxatoms)::atoms
end type molec

type(molec)::molecel

contains

real(kind=8) function rij(i,j)
implicit none

integer,intent(in)::i,j

real(kind=8),dimension(3)::dij

dij=molecel%atoms(i)%coordinates-molecel%atoms(j)%coordinates
rij=sqrt(dot_product(dij,dij))

return
end function rij



end module molecule
