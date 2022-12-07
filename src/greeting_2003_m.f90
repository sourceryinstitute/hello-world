module greeting_2003_m
  implicit none

  private
  public :: greeting_t

  type greeting_t
    private
    character(len=:), allocatable :: string_
  contains
    procedure, private :: concatenate
    generic :: operator(//) => concatenate
  end type

  interface greeting_t
    module procedure constructor
  end interface

contains
  
  pure function concatenate(lhs, rhs) result(lhs_rhs)
    class(greeting_t), intent(in) :: lhs
    type(greeting_t), intent(in) :: rhs
    character(len=:), allocatable :: lhs_rhs
    lhs_rhs = trim(lhs%string_) // trim(rhs%string_)
  end function

  pure function constructor(string) result(greeting)
    character(len=*), intent(in) :: string
    type(greeting_t) greeting
    greeting%string_ = string
  end function

end module greeting_2003_m