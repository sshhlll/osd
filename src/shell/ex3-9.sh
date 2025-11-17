#!/bin/bash

# 파일명 정의 (DB.txt 하나만 사용) 
DB_FILE="DB.txt"

# 파일이 없으면 생성
touch $DB_FILE

while true
do
    echo "--- 팀 관리 시스템 (통합 버전) ---"
    echo "1) 팀원 정보 추가" 
    echo "2) 팀원과 한 일 기록" 
    echo "3) 팀원 검색 (이름)" 
    echo "4) 수행 내용 검색 (날짜)" 
    echo "5) 종료" 
    read -p "메뉴를 선택하세요 (1-5): " choice

    case $choice in
        1)
            echo "--- (1) 팀원 정보 추가 ---"
            read -p "팀원 이름: " name
            read -p "생일 또는 전화번호: " info
            # DB.txt에 "이름: 정보" 형태로 저장 
            echo "$name: $info" >> $DB_FILE
            echo "저장 완료. (파일: $DB_FILE)"
            ;;
        2)
            echo "--- (2) 팀원과 한 일 기록 ---"
            read -p "날짜 (예: 2025-11-13): " date
            read -p "수행한 일: " task
            # [수정됨] log.txt가 아닌 DB.txt에 저장 
            echo "[$date] $task" >> $DB_FILE
            echo "기록 완료. (파일: $DB_FILE)"
            ;;
        3)
            echo "--- (3) 팀원 검색 (이름) ---"
            read -p "검색할 이름: " search_name
            echo "'$search_name'으로 검색된 팀원 정보:"
            # DB.txt에서 이름 검색 
            grep -i -a "$search_name" $DB_FILE
            ;;
        4)
            echo "--- (4) 수행 내용 검색 (날짜) ---"
            read -p "검색할 날짜 (예: 2025-11-13): " search_date
            echo "'$search_date'로 검색된 수행 내용:"
            # [수정됨] log.txt가 아닌 DB.txt에서 날짜 검색 
            grep -i -a "$search_date" $DB_FILE
            ;;
        5)
            echo "프로그램을 종료합니다."
            break
            ;;
        *)
            echo "잘못된 입력입니다. 1에서 5 사이의 숫자를 입력하세요."
            ;;
    esac
    echo ""
done
