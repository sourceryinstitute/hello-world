module string_90_m
  !! Demonstrate features that were introduced by Fortran 90, including
  !! modules, private scoping, derived types, generic interfaces,
  !! defined operators, argument intent, trim intrinsic function
  implicit none

  private
  public :: string_t, operator(//)

  integer, parameter :: max_length = 16 

  type string_t
    character(len=max_length) string_
  end type

  interface operator(//)
    module procedure concatenate
  end interface

contains
  
  function concatenate(lhs, rhs) result(lhs_rhs)
    type(string_t), intent(in) :: lhs, rhs
    type(string_t) lhs_rhs
    lhs_rhs%string_ = trim(lhs%string_) // trim(rhs%string_)
  end function

end module string_90_m
