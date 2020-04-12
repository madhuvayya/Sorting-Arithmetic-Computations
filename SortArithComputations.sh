#!/bin/bash -x

echo "enter a value:"
read a
echo "enter b value:"
read b
echo "enter c value:"
read c

echo "$(( $a + $b * $c ))"
echo "$(( $a * $b + $c ))"
echo "$(( $c + $a / $b ))"
echo "$(( $a % $b + $b ))"
