#include <stdio.h>

int main(int argc, char *argv[]) {
    
    printf("--- C 프로그램 시작 ---\n"); 

    // argc는 프로그램 이름까지 포함하므로, 
    // 실제 인자가 2개 이상인지 확인하려면 argc가 3 이상인지 봐야 합니다.
    // (argv[0]: ./my_program, argv[1]: arg1, argv[2]: arg2)
    if (argc < 3) { 
        printf("오류: 2개 이상의 인자가 필요합니다.\n");
    } else {
        printf("입력된 인자 (%d개):\n", argc - 1); 
        
        // argv[0]은 프로그램 이름이므로 1부터 시작
        for (int i = 1; i < argc; i++) {
            printf("  인자 %d: %s\n", i, argv[i]);
        }
    }

    printf("--- C 프로그램 종료 ---\n"); 
    
    return 0;
}
