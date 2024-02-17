program mortgage
    implicit none
    integer :: P, I, L, N, H, C, Q
    real :: J
    !P = principal
    !I = APR
    !L = length of loan in years
    !J = monthly interest in decimal(I/12^100)
    !N = num of months(L*12)
    !H = current monthly interest
    !C = monthly payment - interest(principal for month)
    !Q = new principal balance

!user input P & error message
    write(*,*) 'What is the principal loan amount?'
    read(*,*) P

   do while (P < 0)
        print *, 'Invalid Input'
        write(*,*) 'What is the principal loan amount?'
        read(*,*) P
    enddo

    write(*,*) 'You have entered the loan amount as:' , P

!user input J & error
    write(*,*) 'What is the monthly interest? (decimal)'
    read(*,*) J

    do while (J < 0)
        print *, 'Invalid Input'
        write(*,*) 'What is the monthly interest? (decimal)'
        read(*,*) J
    enddo

    write(*,*) 'You have entered the monthly interest as:' , J

!user input L & error
    write(*,*) 'What is the length of the loan? (months)'
    read(*,*) L

    do while (L < 0)
        print *, 'Invalid Input'
        write(*,*) 'What is the length of the loan? (months)'
        read(*,*) L
    end do

    write(*,*) 'You have entered the loan length as:' , L

end program
