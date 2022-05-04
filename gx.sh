fbc -c gx.bas
if as -c $1 -o $1.o
then
	fbc $1.o gx.o gfx.bas -x $1.out
fi
