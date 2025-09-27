#!/bin/bash

# This script calculates simple interest.

echo "Enter the Principal Amount:"
read principal

echo "Enter the Annual Interest Rate (as a percentage, e.g., 5 for 5%):"
read rate

echo "Enter the Time Period (in years):"
read time

# Calculate simple interest using the formula: SI = (P * R * T) / 100
# 'bc -l' is used for floating-point arithmetic.
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)

echo "Simple Interest: $simple_interest"
