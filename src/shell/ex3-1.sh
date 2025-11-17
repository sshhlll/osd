#!/bin/bash

if [ $# -ne 2 ]; then
    echo "오류: 2개의 숫자를 인자로 입력해야 합니다."
    echo "사용 예: $0 10 5"
    exit 1
fi

num1=$1
num2=$2

add=$((num1 + num2))
sub=$((num1 - num2))
mul=$((num1 * num2))

echo "입력된 두 수: $num1, $num2"
echo "덧셈: $num1 + $num2 = $add"
echo "뺄셈: $num1 - $num2 = $sub"
echo "곱셈: $num1 * $num2 = $mul"

if [ $num2 -eq 0 ]; then
    echo "나눗셈: 오류 (0으로 나눌 수 없습니다.)"
else
    div=$((num1 / num2))
    echo "나눗셈 (정수): $num1 / $num2 = $div"
fi
