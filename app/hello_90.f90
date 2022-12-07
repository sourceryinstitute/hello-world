program hello_90
  use string_90_m, only : string_t, operator(//)
  implicit none
  type(string_t), allocatable :: greeting(:)
  greeting = (/ string_t("Hello"), string_t(",") // string_t(" "), string_t("world!") /)
  print *, greeting
end program
