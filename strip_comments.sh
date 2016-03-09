#!/bin/sh

# Strips lines that begin with spaces, tabs, and "--"

sed '/^[ 	]*--.*/ d' < $1 > $1.new
  
mv $1.new $1

# Converts multiple blank lines to single ones.

sed '/^[ 	]*$/{
N
/^[ 	]*\n$/D
}
' < $1 > $1.new
  
mv $1.new $1

