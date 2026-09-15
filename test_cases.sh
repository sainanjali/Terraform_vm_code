#!/bin/bash

# Exit immediately on error
set -e

echo "=========================================="
echo "       RUNNING SIMPLE PRE-CHECK TESTS     "
echo "=========================================="

# --- Test Case 1: Simple Addition Check ---
NUM1=5
NUM2=10
EXPECTED_SUM=15
ACTUAL_SUM=$((NUM1 + NUM2))

echo -n "Test 1: Addition ($NUM1 + $NUM2 = $EXPECTED_SUM)... "
if [ "$ACTUAL_SUM" -eq "$EXPECTED_SUM" ]; then
    echo "PASSED [✓]"
else
    echo "FAILED [✗]"
    exit 1
fi

# --- Test Case 2: Simple Subtraction Check ---
NUM3=20
NUM4=8
EXPECTED_DIFF=12
ACTUAL_DIFF=$((NUM3 - NUM4))

echo -n "Test 2: Subtraction ($NUM3 - $NUM4 = $EXPECTED_DIFF)... "
if [ "$ACTUAL_DIFF" -eq "$EXPECTED_DIFF" ]; then
    echo "PASSED [✓]"
else
    echo "FAILED [✗]"
    exit 1
fi

# --- Test Case 3: Verify Environment Directory Exists ---
echo -n "Test 3: Checking if environment/prod folder exists... "
if [ -d "environment/prod" ]; then
    echo "PASSED [✓]"
else
    echo "FAILED [✗] - Directory environment/prod not found!"
    exit 1
fi

echo "=========================================="
echo "      ALL TEST CASES PASSED SUCCESSFULLY  "
echo "=========================================="