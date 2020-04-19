program hueckel
implicit none

integer :: natoms
integer,parameter:: maxatoms=100
character(len=80)::title
character(len=2),dimension(maxatoms)::element
real(kind=8),dimension(maxatoms,3)::coordinates

real(kind=8),dimension(maxatoms,maxatoms)::hmatrix=0.0
real(kind=8),dimension(3)::dij

real(kind=8)::alpha,beta
real(kind=8)::rij,dmax

integer::i,j

alpha=0.0
beta=1.0
dmax=1.4

read(*,*) natoms
read(*,*) title
do i=1,natoms
        read(*,*) element(i),coordinates(i,1:3)
enddo

! Setup the hueckel matrix

do i=1,natoms
 if (element(i).eq."C") hmatrix(i,i)=alpha 
 do j=i+1,natoms
   if (element(i).eq."C") then
       if(element(i).eq.element(j)) then
         dij=coordinates(i,1:3)-coordinates(j,1:3)
         rij=sqrt(dot_product(dij,dij)) 
         if (rij.le.dmax) then
                hmatrix(i,j)=beta
                hmatrix(j,i)=hmatrix(i,j)
         endif
        endif
   endif        
 enddo
enddo 



print *,"Input structure"
print *
print *,title
print 100
do i=1,natoms
        print 200,i,element(i),coordinates(i,1:3)
enddo


print *,"Hueckel matrix"
print *
do i=1,natoms
        print *,i,hmatrix(i,1:natoms)
enddo 

print *
print *,"Happy landing"

100 format(X,'NATOM',X,'Element',3X,'X',9X,'Y',9X'Z')
200 format(X,I3,4X,A2,3X,3F10.5)

end program hueckel





