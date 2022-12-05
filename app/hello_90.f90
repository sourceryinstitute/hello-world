program hello_90
  use greeting_90_m, only : greeting_t, operator(+)
  implicit none
  type(greeting_t) greeting
  print *, greeting_t("Hello,") + greeting_t(" world!") 
end program
