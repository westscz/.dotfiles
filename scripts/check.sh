#!/bin/bash
# Script that shows terminal colors
# -- elenapan @ github
 
f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'

# Symbol
s=. #
# s=

cat << EOF
 $f0$s$d$s$t $f1$s$d$s$t $f2$s$d$s$t $f3$s$d$s$t 
 $f4$s$d$s$t $f5$s$d$s$t $f6$s$d$s$t $f7$s$d$s$t 
EOF



#!/bin/bash

# Show the terminal colourscheme as blocks
# Inspired by u/dkeg
# Cheers! Addy

f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'

cat << EOF
 
 $f1██████$d██$t $f2██████$d██$t $f3██████$d██$t $f4██████$d██$t $f5██████$d██$t $f6██████$d██$t 
 $f1██████$d██$t $f2██████$d██$t $f3██████$d██$t $f4██████$d██$t $f5██████$d██$t $f6██████$d██$t 
 $f1██████$d██$t $f2██████$d██$t $f3██████$d██$t $f4██████$d██$t $f5██████$d██$t $f6██████$d██$t 
 $ft██████$d$f7██$t $ft██████$d$f7██$t $ft██████$d$f7██$t $ft██████$d$f7██$t $ft██████$d$f7██$t $ft██████$d$f7██$t 
EOF


#!/bin/bash

# Author: GekkoP
# Source: http://linuxbbq.org/bbs/viewtopic.php?f=4&t=1656#p33189
 
f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'
 
 
cat << EOF
 
 $f0████$d▄$t  $f1████$d▄$t  $f2████$d▄$t  $f3████$d▄$t  $f4████$d▄$t  $f5████$d▄$t  $f6████$d▄$t  $f7████$d▄$t  
 $f0████$d█$t  $f1████$d█$t  $f2████$d█$t  $f3████$d█$t  $f4████$d█$t  $f5████$d█$t  $f6████$d█$t  $f7████$d█$t  
 $f0████$d█$t  $f1████$d█$t  $f2████$d█$t  $f3████$d█$t  $f4████$d█$t  $f5████$d█$t  $f6████$d█$t  $f7████$d█$t  
 $d$f0 ▀▀▀▀  $d$f1 ▀▀▀▀   $f2▀▀▀▀   $f3▀▀▀▀   $f4▀▀▀▀   $f5▀▀▀▀   $f6▀▀▀▀   $f7▀▀▀▀$t  
 
EOF