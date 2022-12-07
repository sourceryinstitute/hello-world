program hello_2018
  use string_2018_m, only : string_t
  implicit none
  type(string_t) greeting
  character(len=32) message[*], salutation
  integer, parameter :: num_digits=12
  character(len=num_digits) image_number
  integer i

  associate(me => this_image())
    write(image_number,*) me
    if (me==1) salutation = "Hello"
    call co_broadcast(salutation, source_image=1)
    greeting = string_t(trim(salutation) // " from image " // trim(adjustl(image_number)))
    message  = greeting%string()
    sync all
    if (me==1) then
      do concurrent(i=1:num_images())
        print *,message[i]
      end do
    end if
  end associate

end program
