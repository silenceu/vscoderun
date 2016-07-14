#!/bin/sh
filename=$1;
extname=${filename##*.};
if [ "$extname" = "cpp" ] ; then
    g++ -std=c++11 -Wall -o `basename $1 .cpp` $1
    ./`basename $1 .cpp`
elif [ "$extname" = "c" ] ; then
    gcc -std=c99 -Wall -o `basename $1 .c` $1
    ./`basename $1 .c`
elif [ "$extname" = "py" ] ; then
    python3 $1
elif [ "$extname" = "java" ] ; then
    javac $1
    java `basename $1 .java`
elif [ "$extname" = 'cs' ] ; then
    dotnet run
else
   echo "unsupported file type!"
fi
echo -e "\n=========================================="
read -n1 -p 'Program is complete,press any key to exit.'
