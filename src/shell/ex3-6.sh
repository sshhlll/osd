#!/bin/bash

echo "[ex3-6.sh] 셸 스크립트가 시작되었습니다."

# 현재 디렉터리에 있는 컴파일된 C 프로그램(my_program_c)을 실행합니다.
# "$@"는 ex3-6.sh가 받은 모든 인자를 그대로 my_program_c에 전달합니다.
./my_program_c "$@"

echo "[ex3-6.sh] 셸 스크립트가 종료되었습니다."
