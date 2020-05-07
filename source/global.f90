module global

integer,parameter::maxatoms=100

character(len=2),dimension(maxatoms)::element
real(kind=8),dimension(maxatoms,3)::coordinates

end module global
