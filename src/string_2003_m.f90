module string_2003_m
  implicit none

  private
  public :: string_t

  type string_t
    private
    character(len=:), allocatable :: string_
  contains
    procedure :: string
    procedure, private :: concatenate
    generic :: operator(//) => concatenate
  end type

  interface string_t
    module procedure construct
  end interface

contains
  
  pure function construct(string) result(new_string_t)
    character(len=*), intent(in) :: string
    type(string_t) new_string_t
    new_string_t%string_ = string 
  end function

  pure function concatenate(lhs, rhs) result(lhs_rhs)
    class(string_t), intent(in) :: lhs, rhs
    type(string_t) lhs_rhs
    lhs_rhs = string_t(lhs%string_ // rhs%string_)
  end function

  pure function string(self) result(self_string)
    class(string_t), intent(in) :: self
    character(len=:), allocatable :: self_string
    self_string = self%string_
  end function

end module string_2003_m