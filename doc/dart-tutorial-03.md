# 개발 환경 구축하기

<!-- wp:paragraph -->
<p>Dart 언어는 오픈소스로 공개 되어 있습니다. 공식 웹사이트인 <a href="https://dart.dev/">dart.dev</a>에서 Dart 언어에 대한 다양한 자료를 구할 수 있고, 커뮤니티 정보도 얻을 수 있으며, Dart 언어를 실행할 소프트웨어를 운영체제에 맞춰서 다운로드 받아 설치 할 수 있습니다. 현재 Dart 언어는 MS 윈도우, 애플 MacOS, 리눅스 운영체제에 설치가 가능합니다. Dart 언어를 설치하기 위하여 다음의 작업을 수행합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>웹 브라우저를 사용하여 <a href="https://dart.dev/">공식 웹사이트</a>에 접속함</li><li>상단 메뉴 중 "Get Dart"를 선택해서 <a href="https://dart.dev/get-dart">설치 사이트</a>로 이동함</li><li>설치할 컴퓨터 운영체제에 맞춰서 Dart 언어를 설치함</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>설치의 편의성을 위하여, MS 윈도우에 설치하는 경우는 "<em>Install using a setup wizard</em>"를 권장합니다. 별다른 작업 없이 쉽게 설치가 될 것 입니다. 리눅스의 경우는 apt-get 혹은 Debian package manager를 활용 할 수 있으니, 선호도에 따라서 선택합니다. MacOS는 Homebrew를 활용 합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dart 언어의 설치와 운영체제 별로 필요한 환경 설정을 마치면 Dart를 사용할 수 있습니다. 콘솔창(MS 윈도우의 DOS창, MacOS/리눅스의 Terminal)을 열어서 <em>dart</em>를 실행하면, 아래의 그림과 같이 command line interface (CLI)로 Dart를 실행한 결과를 확인할 수 있습니다. 참고로 아래의 실행 결과 그림은 MacOS 상에서 실행한 결과이며, 추가로 dart 언어 프로그램의 버전(<em>dart --version</em>)을 확인한 결과도 같이 나타나 있습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":288} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-24-오후-1.28.03.png" alt="" class="wp-image-288"/><figcaption>[그림] Dart 언어 실행 결과 (dart 명령 및 dart --version 명령 : MacOS 환경)</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><br>설치한 CLI 환경 만으로도 Dart 언어를 사용하여 소프트웨어 개발이 가능하지만, 생산성 향상을 위하여 좋은 도구를 사용하는 것도 매우 중요합니다. 여기서는 개발용 컴퓨터에 개발환경을 설치해서, 개발용 컴퓨터가 인터넷에 연결되지 않아도 소프트웨어 개발이 가능하지만, 설치를 해야해서 다소 불편한 오프라인 개발 환경을 먼저 이야기 합니다. 그리고 컴퓨터에 소프트웨어 설치과정 없이 웹브라우저만 있으면 Dart 언어를 경험할 수 있으나, 인터넷에 개발용 컴퓨터가 반드시 연결되어야 하는 온라인 개발 환경을 다음으로 설명합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>오프라인 개발 환경 설치하기</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 공식 사이트에는 Dart 언어를 지원하는 오프라인/온라인 개발 도구를 권장하고 있습니다 [<a href="https://dart.dev/tools">출처</a>]. 우리가 사용할 오프라인 개발 환경용 소프트웨어는 MS사가 오픈소스로 공개한 Visual Code 입니다 [<a href="https://code.visualstudio.com/">출처</a>]. MS Visual Code는 오픈소스 소프트웨어이며, 별도의 비용을 지불하지 않습니다. 지원하는 운영체제가 MS 윈도우, MacOS, 리눅스로 다양하며, 운영체제가 다르더라도 사용자 인터페이스와 기능이 동일하여, 다양한 플랫폼에서 개발하는 개발자에게 일관된 경험을 제공합니다. 특히 외부 Plugin (<em>Extension</em>)을 추가하여 기능을 확장할 수 있습니다. 특히 In-line Trace 기능을 제공하는데, 이는 소스 코드를 한줄 한줄 실행하는 기능으로서, 디버그를 할 때에 매우 요긴한 기능입니다. 그러면 Dart 언어를 위한 오프라인 개발 환경을 구축해 봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>첫째로</strong>, MS Visual Code는 <a href="https://code.visualstudio.com/">공식 사이트에 접속</a>하여, 본인의 운영체제에 맞는 프로그램을 설치하면 됩니다 [<a href="https://code.visualstudio.com/">출처</a>]. 별다른 어려움 없이 설치가 이루어 지며, 설치할 때 별다른 이유가 없다면, "<em>stable</em>" 버전을 선택 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>둘째로</strong>, MS Visual Code에서 Dart를 실행하기 위한 Extension을 설치 합니다. 먼저 MS Visual Code를 실행합니다.  실행한 화면에서, 왼쪽에 위치한 아이콘 중 Extension을 의미하는 다음의 아이콘을 클릭 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":289,"align":"center"} -->
<div class="wp-block-image"><figure class="aligncenter"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-24-오후-1.51.58.png" alt="" class="wp-image-289"/></figure></div>
<!-- /wp:image -->
<br>
<!-- wp:paragraph -->
<p><br>Extension 아이콘을 클릭하면, Visual Code 왼쪽 상단에 "<em>마켓플레이스에서 확장 검색</em>"이라는 글씨가 나타나며, 여기에 직접 dart를 타이핑 한 후, 엔터를 칩니다. 그러면, 아래의 그림에서 숫자로 된 버전은 다르겠지만, Dart 언어 Extension 기능을 찾을 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":290,"align":"center"} -->
<div class="wp-block-image"><figure class="aligncenter"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-24-오후-1.56.39.png" alt="" class="wp-image-290"/><figcaption><br>[그림] Dart Extension</figcaption></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><br>Visual Code가 설치되어 있지 않으면, 우측 하단의 톱니바퀴 아이콘 대신, "<em>Install</em>"이라는 글자가 있는 버튼이 나타납니다. 이 단추를 클릭하면 Visual Code에 Dart Extension을 설치하게 됩니다. 혹은 위의 그림을 누르면 오른쪽 화면에 해당 Extension에 대한 자세한 설명이 아래와 같이 나타납니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":291,"align":"center"} -->
<div class="wp-block-image"><figure class="aligncenter"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-24-오후-1.59.41.png" alt="" class="wp-image-291"/><figcaption><br>[그림] Dart Extension에 대한 자세한 설명과 설치/제거 메뉴</figcaption></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><br>위의 그림은 Visual Code에 Dart Extension이 설치된 이후의 화면이며, Visual Code에 Dart Extension이 설치되어 있지 않으면, "<em>사용안함</em>"이라는 글자 대신 "<em>사용함</em>" 혹은 "<em>Install</em>"이라는 글자가 있습니다. 설치를 위하여 이를 누르면 Dart Extension이 Visual Code에 설치됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이제 Visual Code에서 Dart 언어로 소프트웨어를 개발하고 디버그 할 수 있게 되었습니다. 이제 Visual Code는 Dart 언어 Extension이 업데이트 되면, 개발자에게 알려줘서 업데이트를 유도할 것 입니다. Visual Code의 사용 방법은 추후 다루기로 하고, 이번 글에서는 설치에 만 집중하도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>온라인 개발 환경 사용하기</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 공식 사이트에 명시된 Dart 언어를 지원하는 온라인 개발 도구인 DartPad는 별도의 오프라인 소프트웨어 도구를 설치하지 않아도 됩니다 [<a href="https://dart.dev/tools"></a><a href="https://dart.dev/tools/dartpad">출처</a>]. 웹브라우저만 있으면, 언제 어디서나 Dart 언어를 통한 소프트웨어 개발을 해 볼 수 있고, 굳이 컴퓨터가 아니더라도 테블릿 컴퓨터와 같은 도구를 사용해서도 개발이 가능합니다. 사용법은 매우 단순하며, 그냥 <a href="https://dartpad.dev/">DartPad 웹사이트</a>에 접속하면 됩니다 [<a href="https://dartpad.dev/">출처</a>]. 그러면 아래와 같은 화면을 볼수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":292} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-24-오후-2.15.59-1024x348.png" alt="" class="wp-image-292"/><figcaption><br>[그림] DartPad 웹사이트 접속 화면</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><br>준비된 예제 프로그램을 실행 할 수 도 있습니다. 오른쪽 위의 "<em>Samples</em>" 메뉴를 누르면, 이미 제공되는 예제 중 하나를 선택 할 수 있습니다. 여기서 "<em>Hello World</em>"를 선택하면, 왼쪽 하단의 화면에 Dart로 만들어진 "<em>Hello World</em>" 프로그램의 소스 코드가 나타나는 것을 볼 수 있습니다. 이제 실행을 하기 위하여, 중간 가운데에 있는 "<em>RUN</em>" 버튼을 누릅니다. 그러면, 아래 그림과 같이, 오른쪽 화면에 수행 결과가 나타난 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":293} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-24-오후-2.20.58-1024x318.png" alt="" class="wp-image-293"/><figcaption><br>[그림] DartPad에서 "Hello World" 프로그램을 실행한 결과</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><br>온라인 개발환경은 오프라인 개발환경 대비 기능적 제약이 있으나, Dart 언어 자체를 학습하기 위한 단계에서는 편리하게 사용할 수 있는 방법 입니다. 앞으로 Dart 언어의 기본 문법을 익히면서 쉽고 편하게 실행해 보고 싶다면, 위의 그림에서 왼쪽의 Dart 언어로 쓰여져 있는 부분을 지우고, 본인이 실행하고 싶은 내용으로 채운 후 실행하면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>개발 환경도 구축 했으니, 이제 Dart 언어 속으로 들어가 보도록 합니다.</p>
<!-- /wp:paragraph -->

<br>

<!-- wp:image {"id":267,"align":"right","width":135,"height":48} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="135" height="48"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
