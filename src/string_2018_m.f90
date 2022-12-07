module string_2018_m
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

    pure module function construct(string) result(new_string_t)
      implicit none
      character(len=*), intent(in) :: string
      type(string_t) new_string_t
    end function

  end interface

  interface

    pure module function concatenate(lhs, rhs) result(lhs_rhs)
      implicit none
      class(string_t), intent(in) :: lhs, rhs
      type(string_t) lhs_rhs
    end function

    pure module function string(self) result(self_string)
      implicit none
      class(string_t), intent(in) :: self
      character(len=:), allocatable :: self_string
    end function

  end interface

end module string_2018_m