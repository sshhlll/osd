#!/bin/bash

while true
do
    echo "--- 시스템 상태 확인 ---"
    echo "1) 사용자 정보" 
    echo "2) CPU 사용률 확인 (top)" 
    echo "3) 메모리 사용량 확인" 
    echo "4) 디스크 사용량 확인" 
    echo "5) 종료"
    read -p "메뉴를 선택하세요 (1-5): " choice

    case $choice in
        1)
            echo "--- (1) 사용자 정보 (w) ---"
            w
            ;;
        2)
            echo "--- (2) CPU 사용률 (top 1회 실행) ---"
            # -n 1: 1번만 갱신 (즉시 종료)
            # -b : 배치 모드로 실행
            top -n 1 -b
            # GPU가 있다면 (NVIDIA)
            # if command -v nvidia-smi &> /dev/null; then
            #    echo "--- (2-1) GPU 사용률 (nvidia-smi) ---"
            #    nvidia-smi
            # fi
            ;;
        3)
            echo "--- (3) 메모리 사용량 (free -h) ---"
            free -h
            ;;
        4)
            echo "--- (4) 디스크 사용량 (df -h) ---"
            df -h
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
