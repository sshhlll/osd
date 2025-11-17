#!/bin/bash

# 리눅스 명령어를 실행하는 내부 함수 정의 
run_linux_command() {
    # 기본 명령어 설정 (e.g. ls)
    local base_command="ls"
    
    # 함수로 전달된 모든 인자(옵션)를 명령어에 포함 
    local full_command="$base_command $@"
    
    echo "--- 실행할 명령어: $full_command ---"
    
    # eval 명령어로 문자열을 명령어로 실행 
    eval $full_command
}

echo "스크립트에 전달된 인자: $@"
echo "내부 함수(ls)를 통해 실행합니다."
echo ""

# 스크립트가 받은 인자($@) 전체를 함수로 전달
run_linux_command "$@"
