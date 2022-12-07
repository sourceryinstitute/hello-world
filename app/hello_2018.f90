program hello_2018
  use iso_fortran_env, only : output_unit
  use string_2018_m, only : string_t
  implicit none
  type(string_t), allocatable :: greeting(:)
  integer i
  greeting = [string_t("Hello"), string_t(",") // string_t(" "), string_t("world!")]
  do i=1,size(greeting)
    write(fmt='(a)',unit=output_unit, advance='no')  greeting(i)%string()
  end do
  print *
end program
