program hueckel
use global
implicit none


integer :: natoms
character(len=80)::title

real(kind=8),dimension(maxatoms,maxatoms)::hmatrix=0.0

real(kind=8)::alpha,beta
real(kind=8)::rij,dmax
external rij

integer::i,j

alpha=0.0
beta=1.0
dmax=1.4

call readinput(natoms,title)

! Setup the hueckel matrix

do i=1,natoms
 if (element(i).eq."C") hmatrix(i,i)=alpha 
 do j=i+1,natoms
   if (element(i).eq."C") then
       if(element(i).eq.element(j)) then
         if (rij(i,j).le.dmax) then
                hmatrix(i,j)=beta
                hmatrix(j,i)=hmatrix(i,j)
         endif
        endif
   endif        
 enddo
enddo 



call writeresult(natoms,title,hmatrix)


end program hueckel





