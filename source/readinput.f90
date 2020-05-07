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

