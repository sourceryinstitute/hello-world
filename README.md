A Hello World Retrospective
===========================

This repository contains versions of "Hello, world!" that demonstrate 
some of the features introduced by several Fortran standards:

Demonstration codes
-------------------

### Fortran 90
Demonstrations of features introduced in Fortarn 90:

  * [hello_90.f90](./app/hello_90.f90)
  * [string_90_m.f90](./src/string_90_m.f90)

### Fortran 2003
Demonstrations of features introduced in Fortarn 95 and 2003:

  * [hello_2003.f90](./app/hello_2003.f90)
  * [string_2003_m.f90](./src/string_2003_m.f90)

### Fortran 2018
Demonstrations of features introduced in Fortarn 2008 and 2018:

  * [hello_2018.f90](./app/hello_2018.f90)
  * [string_2018_m.f90](./src/string_2018_m.f90)
  * [string_202018_s.f90](./src/string_2018_s.f90)

Downloaing, Building, and Running
---------------------------------
With `gfortran` and OpenCoarrays installed, execute the following
at a command line in Linux, macOS, or Windows Subsystem for Linux:
```
fpm run hello_90
fpm run hello_2003
fpm run hello_2018 --compiler caf --runner "cafrun -n 2"
```
