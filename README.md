#### "개념 없는 운영자가 소유한 카페들은 매물로 팔리기도 합니다." 책 <창작자의 나라>(김인성) 중.....

# 여러분의 카페는 안녕하십니까?

얼마전 제가 활동하던 스마트폰 관련 카페인 SDA의 매각사태 이후 그 충격에서 벗어나지 못하고 있는 유령회원 정해준(wjdgowns77)입니다.    
#### "여러분의 카페는 안녕하십니까"              
네? 안녕하시다구요? 그렇다면 계속 안녕하리란 보장은 있으십니까?   
네이버카페는 국내 많은 사용자가 이용하고 있지만, 사용자가 많아지면 많아질수록 위험한 커뮤니티 방식입니다.    
생성과 운영이 쉬워 우후죽순 생겨난 커뮤니티 중에는 운영자가 불어난 카페의 몸집을 감당할만한 자격이 되지 않는 경우가 있고, 네이버는 이러한 상황이 발생해도 이를 방치할 뿐 아무런 조취를 취하지 않습니다.      
그 결과로 인터넷 독재와 카페 매각이라는 카페매니저의 부적절한 행동에 방대한 데이터가 유실되는 경우도 있습니다.       
     
     
# 백업에 대한 대책     
네이버카페는 특성상 외부 크롤러의 진입이 원천 차단되어 있어 구글 웹캐시, waybackmachine 등이 네이버 카페에 접근할수 없습니다.    
원본은 하나밖에 없지만, 그 원본은 매우 불안합니다.    
단 한 사람의 잘못된 행동이 수많은 자료를 영원히 사라지게 만들 수 있습니다.      
     
# 스크립트(프로그램)에 대한 소개/사용방법
### 소개
NCBP(네이버카페백업프로그램)은 파이썬 스크립트입니다.            
파이썬 스크립트를 통해 구글 크롬을 제어하여 카페 게시글을 게시글 번호를 기반으로 접속하여 html로 저장, 이후 이를 다시 pdf로 변환합니다.    
다른 프로그램이랑은 다르게 크롤링 중인 페이지를 직접 잘 되고 있나 확인하실 수 있고, 직접 개입하실수도 있습니다.        
네이버카페 백업 프로젝트라 하니까 네이버 카페만 될것 같죠? 사실 링크 뒤에 게시글번호 붙이는 사이트 웬만하면 다 됩니다.(물론 조금 수정하셔야 해요. 이메일 주시면 도와드립니다)       
로그인 절차가 복잡하고 캡차가 있다구요? 그럼 크롬창에서 직접 로그인 하시면 되고 직접 캡차 입력하시면 됩니다.     
게다가 직접 크롬을 띄워서 동작하는거라 크롤링 한다고 티도 잘 안납니다.       
단, 성능(효율성)이 좋은 편은 아닙니다. 컴퓨터 웹서핑 속도가 느리면 크롤링 자체가 오래걸립니다.            
이참에 성능 좋은걸로 한대 사셔도.........아닙니다                   
            
일단 저는 miniconda와 jupyter notebook, 창문10(win10 Build 16299.RS3 영문판)에서 개발했습니다.   
현재 배포되는 NCBP의 배포판은 파이썬의 기본 프로그램인 idle에서 돌아가고, 대부분의 외부 프로그램들을 내장해서 따로 설치할 프로그램은 없습니다.     
크롬 빼구요.    
능력이 있으시다면 대충 소스만 가져다 쓰셔도 됩니다... 아이디어만 갖다 쓰셔도 좋고....그러니까 공개하는 거지요....ㅎㅎ     
물론, 소스 갖다 쓰시고 나서 그걸로 만든 프로그램 공유도 해주시면 더 좋구요,,,    
    
### 사용방법
[이곳](https://github.com/wjdgowns77/NaverCafeBackupProject/tree/master/ver0.2)  을 참고하셔서 설치를 위한 zip파일을 받으시고, 압축을 풀어주세요.   
압축을 푸신 후, 해당 파일 내에 있는 install.bat파일을 더블클릭하시면 자동으로 설치가 진행됩니다.     
설치파일 내에는 파이썬과 wkhtmltopdf같은 필수 설치파일이 포함되어 있어 별도로 받으셔서 설치하셔야 할 부분은 아마 없으실 겁니다.   
설치가 완료된 후, 바탕화면에 있는 NaverCafeBackupProgram 바로가기를 실행하시고 창에서 지시하는대로 값을 입력하신 후 크롤링을 진행하시면 됩니다.   
크롤링된 파일은 C:\Users\(사용자이름)\NCBP\CAFE 에 저장됩니다.     
     
그리고, 혹시, 크롬 브라우저를 설치하지 않으셨다면, 이번 기회에 설치하시는것을 추천드립니다.(크롬 설치파일은 내장되어있지 않습니다)    
     
     
# 사용중 문제 발생시.  

## 현재 chrome업데이트로 인해 chromedriver가 로딩되지 않는 현상이 있습니다.    
이곳에서 [크롬드라이버](http://chromedriver.chromium.org/downloads) 를 받으셔서     
C:\Users\(사용자이름)\NCBP\programdata\chromedriver.exe의 파일을 덮어쓰기 하세요!    
    
기타 문제 발생시 Admin@NoNaver.com 이메일로 해당 스크린샷을 찍어서 보내주시면 최대한 도움을 드리겠습니다.    
카페 규모와 상황에 따라 크롤링 대행도 받습니다.(물론, 무료로요.)
     
     
         
     
# 추후 개발계획      
- 현재 출력파일 형식은 *.html, *.pdf형식입니다.   
- 이미 생성된 html파일을 pdf로 변환하는 과정에서 절대경로가 지정되지 않고 상대경로가 지정되어있는 경우에 한해 사진 깨짐등의 문제가 발생하고, 네이버카페의 경우 절대경로를 지정하고 있어 이 문제는 없습니다만, 해당 프로그램을 사용하여 네이버카페만 크롤링이 가능한게 아니므로 최대한 빠른 시일 내에 *.jpeg형식으로 스크린샷을 찍어 저장하는 방식도 추가할 생각입니다. 
     

# 라이선스(사용권한)      
라이선스(사용권한)은 간단히 GNU-GPL v3 입니다.    
GPL에 대해 간단히 설명을 드리자면, 제 스크립트(소스)를 어떻게 쓰시든지 자유이지만, 그걸로 뭔가 다른 프로그램을 만드셨으면 그 만든 결과물을 저랑 같은 라이선스(GPL)로 배포하셔야 합니다. https://namu.wiki/w/GPL       
곤란하시다면 이메일 주세요~ 별도 요청시 전염성 제거된 GPL라이선스로도 배포 가능합니다~~   

# 파일 다운받기 
[설치용 zip파일 받기](http://imholic.com:8080/fbsharing/1Y237yX5)  
[ver0.2 github페이지](https://github.com/wjdgowns77/NaverCafeBackupProject/tree/master/ver0.2)    
[설치파일 스크립트 보기](https://github.com/wjdgowns77/NaverCafeBackupProject/blob/master/ver0.2/install.bat)     
[크롤링 스크립트 보기](https://github.com/wjdgowns77/NaverCafeBackupProject/blob/master/ver0.2/programdata/NCBP.py)
 
# 링크
[이곳 링크](http://ncbp.nonaver.com)          
[제가 활동중인 카페](https://cafe.naver.com/skyplanet)        
[개인 홈페이지](http://imholic.com)       
[팬택 휴대폰 PDL파일 다운로드](http://imholic.kr)          
      
      
            
                  
                  
                  


admin@nonaver.com
