# generate configure.ac template
autoscan

cp configure.scan configure.ac

# edited configure.ac file

aclocal
autoheader

# create automake Makefile for automake to generate Makefile
touch Makefile.am

# edited Makefile.am for my little Hello Wolrd project

# create needed files
touch NEWS README AUTHORS ChangeLog

# run automake
automake --add-missing --copy

autoconf

./configure

# then we can
make && sudo make install