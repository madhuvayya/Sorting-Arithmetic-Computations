#!/bin/bash -x

declare -A computes

echo "enter a value:"
read a
echo "enter b value:"
read b
echo "enter c value:"
read c

i=0

computes[$((i++))]="$(( $a + $b * $c ))"
computes[$((i++))]="$(( $a * $b + $c ))"
computes[$((i++))]="$(( $c + $a / $b ))"
computes[$((i++))]="$(( $a % $b + $b ))"
