program hueckel
use global
use molecule
implicit none


character(len=80)::title

real(kind=8),dimension(maxatoms,maxatoms)::hmatrix=0.0

real(kind=8)::alpha,beta
real(kind=8)::dmax

integer::i,j

alpha=0.0
beta=1.0
dmax=1.4

call readinput(title)

! Setup the hueckel matrix

do i=1,molecel%natoms
 if (molecel%atoms(i)%element.eq."C") hmatrix(i,i)=alpha 
 do j=i+1,molecel%natoms
   if (molecel%atoms(i)%element.eq."C") then
       if(molecel%atoms(i)%element.eq.molecel%atoms(j)%element) then
         if (rij(i,j).le.dmax) then
                hmatrix(i,j)=beta
                hmatrix(j,i)=hmatrix(i,j)
         endif
        endif
   endif        
 enddo
enddo 



call writeresult(title,hmatrix)


end program hueckel





