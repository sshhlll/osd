#!/bin/bash

# 입력된 인자(점수)가 2개 미만이면 오류 메시지 출력 
if [ $# -lt 2 ]; then
    echo "오류: 2개 이상의 점수를 입력하세요."
    echo "사용 예: $0 95 80 75"
    exit 1
fi

total_score=0
subject_count=$#

echo "--- 개별 과목 등급 ---"

# 1) 각각에 대한 등급 출력 
for score in "$@"
do
    total_score=$((total_score + score))
    
    # 등급 판별 
    if [ $score -ge 90 ]; then
        grade="A"
    else
        grade="B"
    fi
    echo "점수: $score -> 등급: $grade"
done

# 2) 평균 등급 출력 
# bc를 사용하여 실수 연산으로 평균 점수 계산
average_score=$(echo "scale=2; $total_score / $subject_count" | bc)

# 평균 점수로 평균 등급 판별
# bc는 부동소수점 비교를 직접 지원하지 않으므로, 정수 부분만 비교합니다.
# (또는 awk 사용)
if [ $(echo "$average_score >= 90" | bc) -eq 1 ]; then
    average_grade="A"
else
    average_grade="B"
fi

echo "--- 평균 ---"
echo "평균 점수: $average_score"
echo "평균 등급: $average_grade"
