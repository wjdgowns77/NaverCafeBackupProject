#### "개념 없는 운영자가 소유한 카페들은 매물로 팔리기도 합니다." 책 <창작자의 나라 (김인성)> 중.....

# 여러분의 카페는 안녕하십니까?

얼마전 제가 활동하던 한 제조사의 스마트폰 관련 카페 매각사태 이후 그 충격에서 벗어나지 못하고 있는 유령회원 정해준(wjdgowns77)입니다.    
"여러분의 카페는 안녕하십니까" 한번 물어보고 싶습니다.  
안녕하시다구요? 그렇다면 계속 안녕하리란 보장은 있으십니까?
네이버카페는 국내 많은 사용자가 이용하고 있지만, 사용자가 많아지면 많아질수록 위험한 커뮤니티 방식입니다.    
우후죽순 생겨난 커뮤니티 중에는 커뮤니티 운영이 너무나도 쉬운 나머지, 운영자가 불어난 카페의 몸집을 감당할만한 능력이 되지 않는 경우도 있습니다.  
제가 말하는 능력이란, 조그마한 금전과 사익에 흔들리지 않고 커뮤니티를 지켜내는 능력입니다.    
물론 운영능력도 필요하겠지만, 이는 논외로 합니다.    
별 것 아닌것 같죠? 맞습니다. 별 거 아니에요.....

# 백업에 대한 대책
네이버카페는 특성상 외부 크롤러의 진입이 원천 차단되어 있습니다. 구글 웹캐시, waybackmachine 아무것도 네이버 카페에 접근할수 없습니다.    
이는 모두 네이버의 폐쇄성 때문입니다. 사진 한장 나눠주지 않으려 하지만, 남의 컨텐츠는 엄청 잘 가져가죠....    
이런식으로 한 국가의 거의 모든 인터넷 자료들를 단 한군데 사기업의 서비스 안에 모조리 다 꽁꽁 묶어놓는 나라도 드물겁니다 아마,,,     
반독점법 이런걸로 찢어야 하는게 아닌가 싶을 정도입니다.    
갑자기 얘기가 딴곳으로 샜는데.... 원본 하나밖에 없는데다가 저작권 때문에 어디 복사도 안되고, 사기업이나 공익 단체의 봇 진입도 차단되다 보니 카페가 폐쇄되거나 팔리면 다시는 자료를 찾을 수 없게 될수도 있습니다....    
그러니 ... 중요한 자료는 알아서 백업해야죠....

# 스크립트(프로그램)에 대한 소개/사용방법
miniconda와 jupyter notebook, 창문10(win10 Build 16299.RS3)으로 기본 테스트를 했습니다. 능력이 있으시다면 대충 소스만 가져다 쓰셔도 됩니다... 아이디어만 갖다 쓰셔도 좋고....그러니까 공개하는 거지요....ㅎㅎ    
물론, 소스 갖다 쓰시고 나서 공유도 해주시면 좋구요,,,  
스크립트 사용을 위한 사전 설정 방법.  
1.miniconda를 받아서 설치해 줍니다.   
2.Anaconda Prompt를 여셔서 pip install jupyter, pip install selenium, pip install bs4 해 줍니다.   
2.wkhtmltopdf를 받아서 설치해 줍니다. 단, 설치 설치 경로를 변경하지 않습니다.(변경하셨으면 이에 맞추셔서 스크립트를 수정하셔도 되는데....귀찮은거 싫어하신다면 그냥 기본 디렉터리(설치경로)에 설치하시는걸 추천드립니다;;;;^^)   
3.크롬드라이버를 받으셔서 C드라이브에 chromedriver폴더 만드시고, 그 안에 chromedriver.exe파일을 넣어 줍니다.    
4.C드라이브의 Users 폴더 안의 사용자이름으로 된 폴더 안( C:/Users/%username% )에 cafe라는 폴더를 하나 만들어 줍니다.    
5.anaconda prompt를 여셔서 jupyter notebook치고 엔터 하시면 창이 뜹니다.    
6.이 스크립트를 다운받으셔서 실행하셔도 좋고, New python3 하셔서 복사 붙혀넣기 하셔도 좋습니다. 어떻게든 실행만 하시면 됩니다. 단, "위에서부터 아래로" 순서대로 실행하셔야 합니다.(반대로 하시면 오류가....)  
7.오류발생시 admin@nonaver.com(주 이메일)로 연락주시면 도와드릴"수도" 있습니다.(저도 이걸 잘 하는게 아니기 때문에 도움을 못 드릴수도 있습니다,,) 
  
# 라이선스(사용권한)
라이선스(사용권한)은 간단히 GNU-GPL 입니다.  
GPL에 대해 간단히 설명을 드리자면, 제 스크립트(소스)를 어떻게 쓰시든지 자유이지만, 그걸로 뭔가 다른 프로그램을 만드셨으면 그 만든 결과물을 저랑 같은 라이선스(GPL)로 배표하셔야 합니다. https://namu.wiki/w/GPL       
어떤 용도로 쓰일지 혹시 몰라 GPL걸었으니 곤란하시다면 따로 연락하세요...^^  

# 파일 다운받기 
[ipynb파일 받기](http://ncbp.nonaver.com/NaverCafeBackupProgram.ipynb)  
[파일보기](https://github.com/wjdgowns77/NaverCafeBackupProject/blob/master/NaverCafeBackupProgram.ipynb)     
[깃허브 페이지 보기](https://github.com/wjdgowns77/NaverCafeBackupProject/) 
  
# 링크
http://ncbp.nonaver.com (이곳 링크)   
https://cafe.naver.com/skyplanet/ (제가 활동중인 카페)    
http://imholic.com (개인 홈페이지)    
http://imholic.kr (팬택 휴대폰 PDL파일 다운로드)       
      
      
p.s.: 제가 도메인이 좀 많지요? 안그래도 도메인 사날리다가 허리휘게 생겼습니다.....     
사실 지금 가지고 있는게 4개인데, 조만간 6개를 더 사야 합니다.   
일년에 도메인 등록비가 22만원씩 나올 일도 멀지 않은것 같습니다.       

admin@nonaver.com
