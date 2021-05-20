REM 사용하지 않는 파일.
ECHO off
ECHO 프로그램 로딩중...
call "C:\Users\%username%\Miniconda3\\Scripts\activate.bat"
pip install selenium
pip install jupyter
ECHO 설치완료. 오류시 이 메시지를 캡처해서 보내주세요. admin@NoNaver.com
timeout 3
exit






start cmd /c start /d "C:\Users\%username%\Miniconda3\\Scripts\" /b "activate.bat pip install jupyter"