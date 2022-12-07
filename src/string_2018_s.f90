submodule(string_2018_m) string_2018_s
  implicit none

contains

  module procedure construct
    new_string_t%string_ = string 
  end procedure

  module procedure concatenate
    lhs_rhs = string_t(lhs%string_ // rhs%string_)
  end procedure

  module procedure string
    self_string = self%string_
  end procedure

end submodule string_2018_s