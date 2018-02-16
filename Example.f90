program example
  use Config_Mod
  implicit none

  character(len=30), parameter :: file = "example_config_file.txt"
  type(config) :: conf
  integer :: int
  real :: r4
  logical :: log
  character(:), allocatable :: str
   
  call conf%read_file(file)
  
  call conf%value_from_key("integer", int)
  print *,"integer: ", int

  call conf%value_from_key("real", r4)
  print *, "real: ", r4

  call conf%value_from_key("logical1", log)
  print *, "logical1: ", log

  call conf%value_from_key("logical2", log)
  print *, "logical2: ", log

  call conf%value_from_key("string", str)
  print *, "string: ", str

  call conf%value_from_key("fake_key", r4, default_value = 2.0)
  print *, "default value: ", r4
  
end program example
