program hello_2003
  use greeting_2003_m, only : greeting_t
  implicit none
  associate(greeting => [greeting_t("Hello,"), greeting_t(" world!")])
    print *, greeting(1) + greeting(2)
  end associate
end program