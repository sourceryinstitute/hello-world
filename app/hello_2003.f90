program hello_2003
  use string_2003_m, only : string_t
  implicit none
  associate(greeting => [string_t("Hello,"), string_t(" world!")])
    print *, greeting(1) // greeting(2)
  end associate
end program