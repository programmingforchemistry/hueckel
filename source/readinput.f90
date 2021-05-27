subroutine readinput(title)
use global
use molecule
implicit none


character(len=80)::title

integer i

read(*,*) molecel%natoms
read(*,*) title
do i=1,molecel%natoms
        read(*,*) molecel%atoms(i)%element,molecel%atoms(i)%coordinates(1:3)
enddo


return
end subroutine readinput

