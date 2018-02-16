
FC=gfortran

example:
	$(FC) Config.f90 Example.f90 -o fconfig -g
clean:
	rm -f *.o *.mod fconfig
	rm -rf *.dSYM
