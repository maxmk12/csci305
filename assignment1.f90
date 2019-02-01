program assignment1
      implicit none
      integer :: input = 0
      integer :: q = 25, d = 10, n = 5, p = 1
      integer :: q1 = 0, d1 = 0, n1 = 0, p1 = 0
      integer, dimension(8) :: values
      call date_and_time(VALUES = values)
      write(*, fmt= "(i0, a, i0, a, i0, a, i0, a, i0)") VALUES(3), '-', VALUES(2), '-', VALUES(1), ', ', VALUES(5), ':',VALUES(6)
      
      write(*, fmt = "(a)", ADVANCE = 'NO') 'input value: '
      read *, input

      do while (input >= q)
         input = input - q
         q1 = q1 + 1
      end do
      do while(input >= d)
         input = input - d
         d1 = d1 + 1
      end do
      do while(input >= n)
         input = input - n
         n1 = n1 + 1
      end do
      do while(input >= p)
         input = input - p
         p1 = p1 + 1
      end do
      if(q1 > 0) then
         write(*, fmt = "(i0)", ADVANCE = 'NO') q1
         write(*, '(" Quarter ")', ADVANCE = 'NO') 
      end if
      if(d1 > 0) then
         write(*, fmt = "(i0)", ADVANCE = 'NO') d1
         write(*, '(" Dime ")', ADVANCE = 'NO')
      end if
      if(n1 > 0) then
         write(*, fmt = "(i0)", ADVANCE = 'NO') n1
         write(*, '(" Nickel ")', ADVANCE = 'NO')
      end if
      if(p1 > 0) then
         write(*, fmt = "(i0)", ADVANCE = 'NO') p1
         write(*, '(" Penny ")', ADVANCE = 'NO')
      end if
end program assignment1
