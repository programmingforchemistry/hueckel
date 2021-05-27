program hueckel
use global
use molecule
implicit none

integer :: natoms
integer :: ncarbon,jcarbon
character(len=80)::title

real(kind=8),dimension(maxatoms,maxatoms)::hmatrix=0.0
real(kind=8),dimension(maxatoms)::eigval


real(kind=8)::alpha,beta
real(kind=8)::dmax

integer::i,j

integer::info
integer,parameter::lwork=3*maxatoms-1
real(kind=8)::work(lwork)

alpha=0.0
beta=1.0
dmax=1.4
ncarbon=0

call readinput(title)

! Setup the hueckel matrix

do i=1,molecel%natoms
 if (molecel%atoms(i)%element.eq."C") then
 ncarbon=ncarbon+1
 jcarbon=ncarbon
 hmatrix(ncarbon,ncarbon)=alpha
 do j=i+1,molecel%natoms
   if (molecel%atoms(i)%element.eq."C") then
       jcarbon=jcarbon+1
       if (rij(i,j).le.dmax) then
               hmatrix(ncarbon,jcarbon)=beta
               hmatrix(jcarbon,ncarbon)=hmatrix(ncarbon,jcarbon)
         endif
        endif
  enddo
 endif        
enddo 


call dsyev('v','l',ncarbon,hmatrix,maxatoms,eigval,work,lwork,info)

if (info.ne.0) then
write(0,*) "something went wrong the the diagonaliziation, error code:",info
stop
endif



call writeresult(title,hmatrix,eigval,ncarbon)


end program hueckel





