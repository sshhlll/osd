#!/bin/bash

# 점수를 저장할 배열 선언
scores=()

# 5) 종료를 누를 때까지 무한 반복 
while true
do
    echo "--- 성적 관리 프로그램 ---"
    echo "1) 과목 성적 추가" 
    echo "2) 입력된 모든 점수 보기" 
    echo "3) 평균 점수 확인" 
    echo "4) 평균 등급 (GPA) 변환" 
    echo "5) 종료" 
    read -p "메뉴를 선택하세요 (1-5): " choice

    case $choice in
        1)  # 1) 과목 성적 추가
            read -p "추가할 성적을 입력하세요: " score
            scores+=($score)
            echo "$score 점이 추가되었습니다."
            ;;
        2)  # 2) 입력된 모든 점수 보기
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                echo "입력된 모든 점수: ${scores[@]}"
            fi
            ;;
        3)  # 3) 평균 점수 확인
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                total=0
                for s in "${scores[@]}"; do
                    total=$((total + s))
                done
                # bc를 사용하여 실수 나눗셈
                average=$(echo "scale=2; $total / ${#scores[@]}" | bc)
                echo "평균 점수: $average"
            fi
            ;;
        4)  # 4) 평균 등급 (GPA) 변환
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                total=0
                for s in "${scores[@]}"; do
                    total=$((total + s))
                done
                average=$(echo "scale=2; $total / ${#scores[@]}" | bc)
                
                # ex3-3의 기준(90점 이상 A)을 동일하게 적용
                if [ $(echo "$average >= 90" | bc) -eq 1 ]; then
                    grade="A"
                else
                    grade="B"
                fi
                echo "평균 점수 $average 는 $grade 등급입니다."
            fi
            ;;
        5)  # 5) 종료
            echo "프로그램을 종료합니다."
            break # while 루프 탈출
            ;;
        *)
            echo "잘못된 입력입니다. 1에서 5 사이의 숫자를 입력하세요."
            ;;
    esac
    echo "" # 메뉴 간 구분을 위한 빈 줄
done
