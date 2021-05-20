@ECHO OFF
chcp 949
CLS
ECHO 프로그램 구동 시작중....
ECHO install Naver Cafe Backup Program.....
ECHO 이 프로그램의 저작권 규정은 GPL v3를 적용중입니다.
timeout 2


REM 0. --------------- programdata폴더 존재여부,실행가능여부 확인(파일존재여부,블랙리스트 확인)-----------------
IF NOT EXIST "programdata" (
	ECHO programdata 폴더를 이 배치파일과 같은 경로에 놓고 실행시켜 주세요!
	ECHO 압축상태에서 실행하시고 계시다면, 압축을 해제해 주세요.
	ECHO 무시하고 진행하시려면, 아무 키나 누르세요.
	PAUSE)
IF NOT EXIST "programdata\NCBP.bat" (
	ECHO programdata 내부의 NCBP.bat 파일이 없으면 설치될 수 없습니다!
	ECHO 압축상태에서 실행하시고 계시다면, 압축을 해제해 주세요.
	ECHO 무시하고 진행하시려면, 아무 키나 누르세요.
	PAUSE)
IF NOT EXIST "programdata\NCBP.py" (
	ECHO programdata 내부의 NCBP.py 파일이 없으면 설치될 수 없습니다!
	ECHO 압축상태에서 실행하시고 계시다면, 압축을 해제해 주세요.
	ECHO 무시하고 진행하시려면, 아무 키나 누르세요.
	PAUSE)
IF NOT EXIST "programdata\miniconda3.exe" (
	ECHO programdata 내부의 miniconda3.exe 파일이 없으면 miniconda설치가 불가능합니다!
	ECHO 압축상태에서 실행하시고 계시다면, 압축을 해제해 주세요.
	ECHO 무시하고 진행하시려면, 아무 키나 누르세요.
	PAUSE)
IF NOT EXIST "programdata\NaverCafeBackupProgram.lnk" (
	ECHO programdata 내부의 NaverCafeBackupProgram.lnk 파일이 없으면 설치될 수 없습니다!
	ECHO 압축상태에서 실행하시고 계시다면, 압축을 해제해 주세요.
	ECHO 무시하고 진행하시려면, 아무 키나 누르세요.
	PAUSE)
IF NOT EXIST "programdata\WKhtmltopdf.exe" (
	ECHO programdata 내부의 WKhtmltopdf.exe 파일이 없으면 크롤링변환 프로그램 설치가 불가능합니다!
	ECHO 압축상태에서 실행하시고 계시다면, 압축을 해제해 주세요.
	ECHO 무시하고 진행하시려면, 아무 키나 누르세요.
	PAUSE)
	
REM programdata폴더 내부 파일 존재여부 확인끝.


REM 프로그램 설치여부 확인, 미설치시 설치.

REM 비트수 확인하여 구동.
if exist %windir%\SysWOW64 (
REM -----64비트일때-----

REM 파이썬 설치여부 확인
IF NOT EXIST "C:\ProgramData\Miniconda3" (
	ECHO Miniconda3가 설치되어 있지 않습니다.
	ECHO 설치 프로그램을 시작합니다.
	ECHO 설치시 Install for All Users를 선택하셔야 합니다.
	timeout 10
	programdata\miniconda3.exe
	ECHO 설치완료후 아무키나 누르세요.....
	PAUSE )

REM Wkhtmltopdf설치여부 확인
IF NOT EXIST "C:\Program Files\wkhtmltopdf" (
	ECHO wkHTMLtoPDF가 설치되어 있지 않습니다.
	ECHO 설치 프로그램을 시작합니다.
	programdata\wkhtmltopdf.exe
	ECHO 설치 완료 후 아무키나 누르세요....
	PAUSE )

) else (

REM -----32비트일때-----


REM 파이썬 설치여부 확인
IF NOT EXIST "C:\ProgramData\Miniconda3" (
	ECHO Miniconda3가 설치되어 있지 않습니다.
	ECHO 설치 프로그램을 시작합니다.
	ECHO 설치시 Install for All Users를 선택하셔야 합니다.
	timeout 10
	programdata\miniconda3_32.exe
	ECHO 설치완료후 아무키나 누르세요.....
	PAUSE )



REM Wkhtmltopdf설치여부 확인
IF NOT EXIST "C:\Program Files\wkhtmltopdf" (
	ECHO wkHTMLtoPDF가 설치되어 있지 않습니다.
	ECHO 설치 프로그램을 시작합니다.
	programdata\wkhtmltopdf_32.exe
	ECHO 설치 완료 후 아무키나 누르세요....
	PAUSE )

)


REM 구글크롬 설치여부 확인
IF NOT EXIST "C:\Program Files (x86)\Google\Chrome" (
	IF NOT EXIST "C:\Program Files\Google\Chrome\Application\chrome.exe" (
		ECHO 구글 크롬이 설치되어 있지 않습니다.
		ECHO 구글 크롬은 설치파일이 내장되어 있지 않습니다.
		ECHO 구글 크롬을 설치하신 후 재실행해 주세요.
		PAUSE
	)
)

REM 프로그램초기화면
TITLE install NCBP program.....
CLS
ECHO  ─────────────────────────────────────────────────────────────
ECHO NNNNNNNN        NNNNNNNN       CCCCCCCCCCCCBBBBBBBBBBBBBBBBB  PPPPPPPPPPPPPPPPP   
ECHO N:::::::N       N::::::N    CCC::::::::::::B::::::::::::::::B P::::::::::::::::P  
ECHO N::::::::N      N::::::N  CC:::::::::::::::B::::::BBBBBB:::::BP::::::PPPPPP:::::P 
ECHO N:::::::::N     N::::::N C:::::CCCCCCCC::::BB:::::B     B:::::PP:::::P     P:::::P
ECHO N::::::::::N    N::::::NC:::::C       CCCCCC B::::B     B:::::B P::::P     P:::::P
ECHO N:::::::::::N   N::::::C:::::C               B::::B     B:::::B P::::P     P:::::P
ECHO N:::::::N::::N  N::::::C:::::C               B::::BBBBBB:::::B  P::::PPPPPP:::::P 
ECHO N::::::N N::::N N::::::C:::::C               B:::::::::::::BB   P:::::::::::::PP  
ECHO N::::::N  N::::N:::::::C:::::C               B::::BBBBBB:::::B  P::::PPPPPPPPP    
ECHO N::::::N   N:::::::::::C:::::C               B::::B     B:::::B P::::P            
ECHO N::::::N    N::::::::::C:::::C               B::::B     B:::::B P::::P            
ECHO N::::::N     N:::::::::NC:::::C       CCCCCC B::::B     B:::::B P::::P            
ECHO N::::::N      N::::::::N C:::::CCCCCCCC::::BB:::::BBBBBB::::::PP::::::PP          
ECHO N::::::N       N:::::::N  CC:::::::::::::::B:::::::::::::::::BP::::::::P          
ECHO N::::::N        N::::::N    CCC::::::::::::B::::::::::::::::B P::::::::P          
ECHO NNNNNNNN         NNNNNNN       CCCCCCCCCCCCBBBBBBBBBBBBBBBBB  PPPPPPPPPP          
ECHO.                                                          
ECHO                         IM - NCBP
ECHO                 버전 0.3.7 (2021.05.20배포)
ECHO	          Naver Cafe Backup Project/Program	                     
ECHO           네이버 카페 백업 프로그램 설치를 시작합니다...         
ECHO  ─────────────────────────────────────────────────────────────
REM 프로그램 설치의사 확인
ECHO 아무 키나 눌러서 설치를 시작하세요.
PAUSE
CLS

REM ------------------------------------------------------------
REM 1.프로그램 폴더 생성...
ECHO 1.프로그램 폴더 생성
ECHO C:\Users\%username%\NCBP폴더를 생성합니다
mkdir C:\Users\%username%\NCBP
ECHO C:\Users\%username%\NCBP\CAFE 폴더를 생성합니다.
mkdir C:\Users\%username%\NCBP\CAFE
ECHO C:\Users\%username%\NCBP\programdata 폴더를 생성합니다.
mkdir C:\Users\%username%\NCBP\programdata
timeout 1
REM 폴더생성확인
IF NOT EXIST "C:\Users\%username%\NCBP" (
	ECHO 폴더생성 오류!
	ECHO 설치오류! NCBP.NoNaver.Com에 있는 "오류>폴더생성오류"항목을 참고하여 수동 생성하세요.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\CAFE" (
	ECHO 폴더생성 오류!
	ECHO 설치오류! NCBP.NoNaver.Com에 있는 "오류>폴더생성오류"항목을 참고하여 수동 생성하세요.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\programdata" (
	ECHO 폴더생성 오류!
	ECHO 설치오류! NCBP.NoNaver.Com에 있는 "오류>폴더생성오류"항목을 참고하여 수동 생성하세요.
	PAUSE)
REM 폴더생성확인 완료

REM 프로그램 폴더 생성완료.
REM ------------------------------------------------------------
REM 2.프로그램 파일 설치디렉터리로 이동
ECHO.
ECHO.
ECHO 2. 프로그램 구동에 필요한 파일을 설치 디렉터리로 이동중입니다.
COPY "programdata\NCBP.bat" "C:\Users\%username%\NCBP\programdata\NCBP.bat"
COPY "programdata\NCBP.py" "C:\Users\%username%\NCBP\programdata\NCBP.py"
COPY "programdata\NCBP_WK.bat" "C:\Users\%username%\NCBP\programdata\NCBP_WK.bat"
COPY "programdata\chromedriver_89.exe" "C:\Users\%username%\NCBP\programdata\chromedriver_89.exe"
COPY "programdata\chromedriver_90.exe" "C:\Users\%username%\NCBP\programdata\chromedriver_90.exe"
COPY "programdata\chromedriver_91.exe" "C:\Users\%username%\NCBP\programdata\chromedriver_91.exe"



REM 이동여부 확인
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\NCBP.bat" (
	ECHO 파일 복사 오류!
	ECHO 설치오류! NCBP.NoNaver.Com에 있는 "오류>파일복사오류"항목을 참고하여 파일을 수동 이동하세요.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\NCBP.py" (
	ECHO 파일 복사 오류!
	ECHO 설치오류! NCBP.NoNaver.Com에 있는 "오류>파일복사오류"항목을 참고하여 파일을 수동 이동하세요.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\NCBP_WK.bat" (
	ECHO 파일 복사 오류!
	ECHO 설치오류! NCBP.NoNaver.Com에 있는 "오류>파일복사오류"항목을 참고하여 파일을 수동 이동하세요.
	PAUSE)
	
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\chromedriver_89.exe" (
	ECHO 파일 복사 오류!
	ECHO 설치오류! NCBP.NoNaver.Com에 있는 "오류>파일복사오류"항목을 참고하여 파일을 수동 이동하세요.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\chromedriver_90.exe" (
	ECHO 파일 복사 오류!
	ECHO 설치오류! NCBP.NoNaver.Com에 있는 "오류>파일복사오류"항목을 참고하여 파일을 수동 이동하세요.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\chromedriver_91.exe" (
	ECHO 파일 복사 오류!
	ECHO 설치오류! NCBP.NoNaver.Com에 있는 "오류>파일복사오류"항목을 참고하여 파일을 수동 이동하세요.
	PAUSE)
	
timeout 1
ECHO.
REM 2.프로그램 구동파일 이동완료
REM ------------------------------------------------------------
REM 3.바로가기 생성
ECHO 3. 바탕화면에 바로가기를 생성합니다.
COPY "programdata\NaverCafeBackupProgram.lnk" "C:\Users\%username%\Desktop\NaverCafeBackupProgram.lnk"
IF NOT EXIST "C:\Users\%username%\Desktop\NaverCafeBackupProgram.lnk" (
	ECHO 바로가기파일 복사 오류!
	ECHO 설치오류! NCBP.NoNaver.Com에 있는 "오류>파일복사오류"항목을 참고하여 파일을 수동 이동하세요.
	PAUSE)
REM ------------------------------------------------------------
ECHO.
ECHO 4.파이썬 내부 프로그램들의 설치를 시작 중....
timeout 3
REM start programdata\NCBP_install.bat
call "C:\ProgramData\Miniconda3\Scripts\activate.bat"
pip install selenium
pip install jupyter
ECHO.

ECHO 설치가 완료되었습니다.
ECHO 아무 키나 눌러서 창을 닫으세요.
PAUSE


