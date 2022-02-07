@ECHO OFF
chcp 949
CLS
ECHO ���α׷� ���� ������....
ECHO install Naver Cafe Backup Program.....
ECHO �� ���α׷��� ���۱� ������ GPL v3�� �������Դϴ�.
timeout 2


REM 0. --------------- programdata���� ���翩��,���డ�ɿ��� Ȯ��(�������翩��,������Ʈ Ȯ��)-----------------
IF NOT EXIST "programdata" (
	ECHO programdata ������ �� ��ġ���ϰ� ���� ��ο� ���� ������� �ּ���!
	ECHO ������¿��� �����Ͻð� ��ôٸ�, ������ ������ �ּ���.
	ECHO �����ϰ� �����Ͻ÷���, �ƹ� Ű�� ��������.
	PAUSE)
IF NOT EXIST "programdata\NCBP.bat" (
	ECHO programdata ������ NCBP.bat ������ ������ ��ġ�� �� �����ϴ�!
	ECHO ������¿��� �����Ͻð� ��ôٸ�, ������ ������ �ּ���.
	ECHO �����ϰ� �����Ͻ÷���, �ƹ� Ű�� ��������.
	PAUSE)
IF NOT EXIST "programdata\NCBP.py" (
	ECHO programdata ������ NCBP.py ������ ������ ��ġ�� �� �����ϴ�!
	ECHO ������¿��� �����Ͻð� ��ôٸ�, ������ ������ �ּ���.
	ECHO �����ϰ� �����Ͻ÷���, �ƹ� Ű�� ��������.
	PAUSE)
IF NOT EXIST "programdata\miniconda3.exe" (
	ECHO programdata ������ miniconda3.exe ������ ������ miniconda��ġ�� �Ұ����մϴ�!
	ECHO ������¿��� �����Ͻð� ��ôٸ�, ������ ������ �ּ���.
	ECHO �����ϰ� �����Ͻ÷���, �ƹ� Ű�� ��������.
	PAUSE)
IF NOT EXIST "programdata\NaverCafeBackupProgram.lnk" (
	ECHO programdata ������ NaverCafeBackupProgram.lnk ������ ������ ��ġ�� �� �����ϴ�!
	ECHO ������¿��� �����Ͻð� ��ôٸ�, ������ ������ �ּ���.
	ECHO �����ϰ� �����Ͻ÷���, �ƹ� Ű�� ��������.
	PAUSE)
IF NOT EXIST "programdata\WKhtmltopdf.exe" (
	ECHO programdata ������ WKhtmltopdf.exe ������ ������ ũ�Ѹ���ȯ ���α׷� ��ġ�� �Ұ����մϴ�!
	ECHO ������¿��� �����Ͻð� ��ôٸ�, ������ ������ �ּ���.
	ECHO �����ϰ� �����Ͻ÷���, �ƹ� Ű�� ��������.
	PAUSE)
	
REM programdata���� ���� ���� ���翩�� Ȯ�γ�.


REM ���α׷� ��ġ���� Ȯ��, �̼�ġ�� ��ġ.

REM ��Ʈ�� Ȯ���Ͽ� ����.
if exist %windir%\SysWOW64 (
REM -----64��Ʈ�϶�-----

REM ���̽� ��ġ���� Ȯ��
IF NOT EXIST "C:\ProgramData\Miniconda3" (
	ECHO Miniconda3�� ��ġ�Ǿ� ���� �ʽ��ϴ�.
	ECHO ��ġ ���α׷��� �����մϴ�.
	ECHO ��ġ�� Install for All Users�� �����ϼž� �մϴ�.
	timeout 10
	programdata\miniconda3.exe
	ECHO ��ġ�Ϸ��� �ƹ�Ű�� ��������.....
	PAUSE )

REM Wkhtmltopdf��ġ���� Ȯ��
IF NOT EXIST "C:\Program Files\wkhtmltopdf" (
	ECHO wkHTMLtoPDF�� ��ġ�Ǿ� ���� �ʽ��ϴ�.
	ECHO ��ġ ���α׷��� �����մϴ�.
	programdata\wkhtmltopdf.exe
	ECHO ��ġ �Ϸ� �� �ƹ�Ű�� ��������....
	PAUSE )

) else (

REM -----32��Ʈ�϶�-----


REM ���̽� ��ġ���� Ȯ��
IF NOT EXIST "C:\ProgramData\Miniconda3" (
	ECHO Miniconda3�� ��ġ�Ǿ� ���� �ʽ��ϴ�.
	ECHO ��ġ ���α׷��� �����մϴ�.
	ECHO ��ġ�� Install for All Users�� �����ϼž� �մϴ�.
	timeout 10
	programdata\miniconda3_32.exe
	ECHO ��ġ�Ϸ��� �ƹ�Ű�� ��������.....
	PAUSE )



REM Wkhtmltopdf��ġ���� Ȯ��
IF NOT EXIST "C:\Program Files\wkhtmltopdf" (
	ECHO wkHTMLtoPDF�� ��ġ�Ǿ� ���� �ʽ��ϴ�.
	ECHO ��ġ ���α׷��� �����մϴ�.
	programdata\wkhtmltopdf_32.exe
	ECHO ��ġ �Ϸ� �� �ƹ�Ű�� ��������....
	PAUSE )

)


REM ����ũ�� ��ġ���� Ȯ��
IF NOT EXIST "C:\Program Files (x86)\Google\Chrome" (
	IF NOT EXIST "C:\Program Files\Google\Chrome\Application\chrome.exe" (
		ECHO ���� ũ���� ��ġ�Ǿ� ���� �ʽ��ϴ�.
		ECHO ���� ũ���� ��ġ������ ����Ǿ� ���� �ʽ��ϴ�.
		ECHO ���� ũ���� ��ġ�Ͻ� �� ������� �ּ���.
		PAUSE
	)
)

REM ���α׷��ʱ�ȭ��
TITLE install NCBP program.....
CLS
ECHO  ��������������������������������������������������������������������������������������������������������������������������
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
ECHO                 ���� 0.3.9 (2022.02.08����)
ECHO	          Naver Cafe Backup Project/Program	                     
ECHO           ���̹� ī�� ��� ���α׷� ��ġ�� �����մϴ�...         
ECHO  ��������������������������������������������������������������������������������������������������������������������������
REM ���α׷� ��ġ�ǻ� Ȯ��
ECHO �ƹ� Ű�� ������ ��ġ�� �����ϼ���.
PAUSE
CLS

REM ------------------------------------------------------------
REM 1.���α׷� ���� ����...
ECHO 1.���α׷� ���� ����
ECHO C:\Users\%username%\NCBP������ �����մϴ�
mkdir C:\Users\%username%\NCBP
ECHO C:\Users\%username%\NCBP\CAFE ������ �����մϴ�.
mkdir C:\Users\%username%\NCBP\CAFE
ECHO C:\Users\%username%\NCBP\programdata ������ �����մϴ�.
mkdir C:\Users\%username%\NCBP\programdata
timeout 1
REM ��������Ȯ��
IF NOT EXIST "C:\Users\%username%\NCBP" (
	ECHO �������� ����!
	ECHO ��ġ����! NCBP.NoNaver.Com�� �ִ� "����>������������"�׸��� �����Ͽ� ���� �����ϼ���.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\CAFE" (
	ECHO �������� ����!
	ECHO ��ġ����! NCBP.NoNaver.Com�� �ִ� "����>������������"�׸��� �����Ͽ� ���� �����ϼ���.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\programdata" (
	ECHO �������� ����!
	ECHO ��ġ����! NCBP.NoNaver.Com�� �ִ� "����>������������"�׸��� �����Ͽ� ���� �����ϼ���.
	PAUSE)
REM ��������Ȯ�� �Ϸ�

REM ���α׷� ���� �����Ϸ�.
REM ------------------------------------------------------------
REM 2.���α׷� ���� ��ġ���͸��� �̵�
ECHO.
ECHO.
ECHO 2. ���α׷� ������ �ʿ��� ������ ��ġ ���͸��� �̵����Դϴ�.
COPY "programdata\NCBP.bat" "C:\Users\%username%\NCBP\programdata\NCBP.bat"
COPY "programdata\NCBP.py" "C:\Users\%username%\NCBP\programdata\NCBP.py"
COPY "programdata\NCBP_WK.bat" "C:\Users\%username%\NCBP\programdata\NCBP_WK.bat"
COPY "programdata\chromedriver_97.exe" "C:\Users\%username%\NCBP\programdata\chromedriver_97.exe"
COPY "programdata\chromedriver_98.exe" "C:\Users\%username%\NCBP\programdata\chromedriver_98.exe"
COPY "programdata\chromedriver_99.exe" "C:\Users\%username%\NCBP\programdata\chromedriver_99.exe"



REM �̵����� Ȯ��
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\NCBP.bat" (
	ECHO ���� ���� ����!
	ECHO ��ġ����! NCBP.NoNaver.Com�� �ִ� "����>���Ϻ������"�׸��� �����Ͽ� ������ ���� �̵��ϼ���.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\NCBP.py" (
	ECHO ���� ���� ����!
	ECHO ��ġ����! NCBP.NoNaver.Com�� �ִ� "����>���Ϻ������"�׸��� �����Ͽ� ������ ���� �̵��ϼ���.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\NCBP_WK.bat" (
	ECHO ���� ���� ����!
	ECHO ��ġ����! NCBP.NoNaver.Com�� �ִ� "����>���Ϻ������"�׸��� �����Ͽ� ������ ���� �̵��ϼ���.
	PAUSE)
	
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\chromedriver_97.exe" (
	ECHO ���� ���� ����!
	ECHO ��ġ����! NCBP.NoNaver.Com�� �ִ� "����>���Ϻ������"�׸��� �����Ͽ� ������ ���� �̵��ϼ���.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\chromedriver_98.exe" (
	ECHO ���� ���� ����!
	ECHO ��ġ����! NCBP.NoNaver.Com�� �ִ� "����>���Ϻ������"�׸��� �����Ͽ� ������ ���� �̵��ϼ���.
	PAUSE)
IF NOT EXIST "C:\Users\%username%\NCBP\programdata\chromedriver_99.exe" (
	ECHO ���� ���� ����!
	ECHO ��ġ����! NCBP.NoNaver.Com�� �ִ� "����>���Ϻ������"�׸��� �����Ͽ� ������ ���� �̵��ϼ���.
	PAUSE)
	
timeout 1
ECHO.
REM 2.���α׷� �������� �̵��Ϸ�
REM ------------------------------------------------------------
REM 3.�ٷΰ��� ����
ECHO 3. ����ȭ�鿡 �ٷΰ��⸦ �����մϴ�.
COPY "programdata\NaverCafeBackupProgram.lnk" "C:\Users\%username%\Desktop\NaverCafeBackupProgram.lnk"
IF NOT EXIST "C:\Users\%username%\Desktop\NaverCafeBackupProgram.lnk" (
	ECHO �ٷΰ������� ���� ����!
	ECHO ��ġ����! NCBP.NoNaver.Com�� �ִ� "����>���Ϻ������"�׸��� �����Ͽ� ������ ���� �̵��ϼ���.
	PAUSE)
REM ------------------------------------------------------------
ECHO.
ECHO 4.���̽� ���� ���α׷����� ��ġ�� ���� ��....
timeout 3
REM start programdata\NCBP_install.bat
call "C:\ProgramData\Miniconda3\Scripts\activate.bat"
pip install selenium
pip install jupyter
ECHO.

ECHO ��ġ�� �Ϸ�Ǿ����ϴ�.
ECHO �ƹ� Ű�� ������ â�� ��������.
PAUSE


