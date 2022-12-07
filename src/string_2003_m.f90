module string_2003_m
  implicit none

  private
  public :: string_t

  type string_t
    private
    character(len=:), allocatable :: string_
  contains
    procedure, private :: concatenate
    generic :: operator(//) => concatenate
  end type

  interface string_t
    module procedure constructor
  end interface

contains
  
  pure function concatenate(lhs, rhs) result(lhs_rhs)
    class(string_t), intent(in) :: lhs
    type(string_t), intent(in) :: rhs
    character(len=:), allocatable :: lhs_rhs
    lhs_rhs = trim(lhs%string_) // trim(rhs%string_)
  end function

  pure function constructor(characters) result(string)
    character(len=*), intent(in) :: characters
    type(string_t) string
    string%string_ = characters
  end function

end module string_2003_m