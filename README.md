# 실시간 눈 깜빡임 감지 시스템 (Real-time Blink Detection System)

본 프로젝트는 **MediaPipe Face Mesh**와 **적응형 임계값 알고리즘(Adaptive Threshold Algorithm)**을 활용하여  
실시간으로 사용자의 **눈 깜빡임 빈도를 분석하고 경고를 제공하는 시스템**입니다.  

---

##  주요 기능 (Features)
- 💻 **실시간 영상 입력(Video Input)**: 내장 웹캠을 통해 초당 프레임 단위로 영상 데이터를 수집  
- 🧩 **얼굴 특징점 검출(Landmark Detection)**: MediaPipe Face Mesh를 이용해 468개의 3D 얼굴 특징점 추출  
- 👁️ **EAR 계산(Eye Aspect Ratio)**: 눈 개폐 상태를 수학적으로 계산하여 깜빡임 감지  
- ⚙️ **적응형 임계값 설정(Adaptive Thresholding)**: 사용자별 눈 모양 및 환경 조건에 맞게 임계값 자동 조정  
- 🔔 **경고 피드백(Alert Feedback)**: 분당 깜빡임 수(BPM)를 계산하고 과도한 깜빡임 시 시각적 경고 제공  

---

##  기술 스택 (Tech Stack)
| 항목 | 사용 기술 |
|------|------------|
| 개발 언어 | Python |
| 주요 라이브러리 | OpenCV, MediaPipe, NumPy |
| GUI | Tkinter / PyQt |
| 분석 알고리즘 | EAR + Adaptive Threshold |

---


[참고 연구](https://isg-journal.com/isjea/article/view/505 "클릭") 

---

##  실행 방법 (How to Run)
```bash
# 필수 라이브러리 설치
pip install opencv-python mediapipe numpy

# 프로그램 실행
python main.py

