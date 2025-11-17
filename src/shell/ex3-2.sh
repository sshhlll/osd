#!/bin/bash

echo "y = (1/2) * x^2 계산기입니다."
echo "x 값을 2개 이상 입력하세요 (한 줄에 하나씩). 입력 완료 시 Ctrl+D를 누르세요."

# 사용자가 Ctrl+D를 눌러 입력 종료를 알릴 때까지 무한 반복
while read x
do
    # bc 명령어를 사용하여 실수 연산 수행 
    # scale=4는 소수점 4자리까지 정밀도를 설정합니다.
    # 1/2는 0.5로 계산합니다.
    y=$(echo "scale=4; 0.5 * $x * $x" | bc)
    
    echo "x = $x 일 때, y = $y 입니다."
    
done

echo "계산을 종료합니다."
