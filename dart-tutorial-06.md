# Dart 기초문법 - Hello World!

<!-- wp:paragraph -->
<p>프로그래밍 언어의 추세를 보면, 언어 자체의 기초 문법은 쉬워지고, 언어가 제공하는 기능은 많아지며 강력해 지는 추세 입니다. 따라서 프로그래밍 언어 자체의 문법을 습득하는 시간과 노력은 과거 대비 상대적으로 줄어 들고 있습니다. 그러나 소프트웨어의 소스코드(source code)를 공개하여, 누구나 소프트웨어가 어떻게 만들어 졌는지 공부할 수 있고, 수정할 수 있고, 확장할 수 있는 오픈소스 소프트웨어(open source software) 생태계가 일반화 되면서, 소프트웨어 개발 환경을 구축하고 자료를 얻는 작업은 점점 더 초보자에게는 어려워 지고 있는 것이 추세입니다. 즉, 예전에는 상용 소프트웨어를 구매하여 안정적으로 사용하고, 잘 정리된 책을 사서 읽는 식으로 학습을 하지만, 점점 오픈소스 소프트웨어 프로그램의 사용이 증가하면셔, 상용 소프트웨어 대비 버그와 사용의 불편함이 늘어 나는 것은 사실이므로, 이로 인한 시행착오에 괴로워하게 되고, 잦은 업그레이드와 빠른 기술 개발 주기로 대부분 잘 정리된 책이 없기에 Googling(구글을 통해서 궁금한 것을 학습하는 작업을 의미)이라는 단어에 익숙하게 된다. 또한 한글화된 자료가 많지 않기에, 영어 공부를 좀 더 열심히 할 걸 하는 후회를 갖게 합니다. 하지만, 한 번 정도, 오픈소스 소프트웨어를 활용한 소프트웨어 개발의 처음과 끝을 경험해 보면, 점차 익숙해 지게 되며, 누구나 겪는 통과 의례이니 묵묵하게 지나가면 될 일 입니다. 따라서, 본 글에서는 쉽고 편리한 웹 기반 DartPad가 아닌, 다소 불편하지만 결국에는 사용할 MS Visual Code (이후 MSVC로 명칭함) 오픈소스 소프트웨어를 기반으로 실습과 설명을 하도록 합니다. 그리고, 강조하지만 Dart언어 자체도 오픈소스 소프트웨어 입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>본 연재 글은, 소프트웨어 개발을 처음 시작하는 수준을 가정하고 있습니다. 그러면, 이제 Dart 언어를 배우는 여행을 시작해 보도록 하겠습니다. 이번 글부터는 실제 Dart 언어로 프로그램을 타이핑하고 실행할 테니, 앞쪽에서 설명한 MSVC 프로그램의 설치 과정을 통해서, 개발용 컴퓨터에 MSVC와 Dart Extension이 설치가 되어 있어야 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>MSVC에서 Dart 프로그램 작성하기</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이제 Dart 언어로 프로그램을 시작해 봅시다. Dart 언어로 작성할 화일들을 컴퓨터의 어느 곳에 저장할지 생각한 후, 저장을 원하는 디렉토리를 생성합니다. 여기서는 "darttutorial-06"이라는 이름으로 디렉토리를 만들고, 앞으로 작성할 Hello World! 프로그램을 이 곳에 저장하겠습니다. 일반적으로 프로그램을 개발할 때에는 하나의 프로그램에 많은 소스코드 화일과 아이콘, 이미지 등 여러 화일이 필요합니다. 따라서 MSVC는 프로그램 개발을 위한 화일들을 디렉토리(폴더)에 묶어서 관리하여, 하나의 프로그램이 필요한 여러 화일들을 쉽게 관리 하도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이제 MSVC를 실행합니다. MSVC는 프로그램이 수행되면, "시작"이라는 탭(tab)이 나타나서, 최근에 수행한 작업에 대한 기록을 보여 줍니다. 그리고 MSVC에 대한 도움말, 추가 기능에 대한 설정 방법, 그리고 주요 기능에 대한 설명을 보여 줍니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>앞서 만든 작업용 폴더를 사용할 차례로써, MSVC의 메뉴에서 "작업 영역에 폴더 추가..."를 선택합니다. 그리고 앞서 만든 폴더를 선택합니다. 메뉴에서 "파일"-"새파일"을 실행하면, MSVC에 "Untitled-1"이라는 이름의 탭이 열립니다. 아무것도 타이핑하지 않은 상태에서, "파일"-"저장"을 실행 합니다. 앞서 만든 작업용 폴더안에 화일을 저장하도록 되어 있는 것을 확인할 수 있다. 이는 타이핑하는 Dart 언어로 만든 소프트웨어 소스코드의 이름을 묻는 것으로, 여기서는 글의 구성상 "darttutorial-06-01.dart"로 하겠습니다. 본인이 편한대로 "HelloWorld.dart" 등으로 변경해도 됩니다. 다만, 화일의 확장자를 Dart 언어로 만들었다는 의미로, "dart"로 해야 합니다. 이 작업을 마치면, 탭의 이름이 방금 입력한 화일 이름으로 바뀌었으며, 화일이름 앞에 Dart를 의미하는 파란색 로고가 나타난 것을 볼 수 있습니다. 이렇게 새로운 화일을 만들고 난 이후의 화면은 다음과 같습니다. 왼쪽에 작업하는 폴더 이름 밑에 방금 만든 dart 화일이 포함되어 있는 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":345} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-26-오전-11.37.35.png" alt="" class="wp-image-345"/><figcaption>[그림 6-1] MSVC에서 Dart 언어 작업 탭 새로 만들기</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>참고로 MSVC와 같이 소프트웨어 개발시 소스코드를 타이핑할 때 사용하는 프로그램을 에디터(editor)라고 합니다. 대부분의 에디터는 타이핑을 편하게 하기 위한 기능을 제공하는 수준이지만, MSVC는 소스코드를 작성할때, 프로그래밍 언어에 맞는 다양하고 편리한 기능을 제공하여, 프로그램의 오류를 조기에 제거하는 용도가 많이 들어 있습니다. 에디터가 단순하게 소스코드의 타이핑에 도움을 주는 도구라면, IDE(Integrated Development Environment)라고 불리는 우는 소프트웨어들이 있습니다. 대표적으로 MS의 Visual Studio, Apple의 Xcode, 오픈소스인 Eclipse 등이 있습니다. IDE는 에디터의 기능을 포함하면서, 프로그램을 실행하고, 오류를 잡는 디버그에 대한 기능을 제공하고, 프로그램의 성능을 개선하는 등의 기능을 제공을 하는 도구들입니다. MSVC는 에디터의 영역이지만, 각종 Extension을 추가함으로써, IDE처럼 사용할 수 있는 좋은 도구 입니다. MSVC은 Dart, Python, Go 등 최신 언어를 지원하면서도, C++과 같이 전통적인 언어들을 지원하므로, 친숙해 지면 프로그래밍에 많은 도움을 받을 수 있습니다. 특히, 발표 이후 개발자들이 선호하는 개발환경에서 Top 3, Top 5 혹은 1등에 오르는 등, 개발자들 사이에서 인기가 매우 높은 오픈소스 소프트웨어 도구입니다 [<a href="https://www.software.com/src/ranking-the-top-5-code-editors-2019">참조</a>]. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Dart 언어를 활용한 Hello World! 프로그램 작성하기</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>MSVC에 새롭게 만든 탭에 다음의 프로그램을 타이핑 합니다. 프로그램을 모두 타이핑 했다면, "파일"-"저장"을 선택해서 화일을 저장합니다. 컴퓨터의 디렉토리를 따라가면, 화일이 만들어져 있는 것을 확인 할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">// darttutorial-06-01.dart

void main() {
  print("Hello World!");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>먼저 // 기호는 Dart 언어를 수행하는 경우에는 전혀 상관이 없는 구문입니다. 주석(comment)이라고 불리는 기술로서, // 기호 이후의 문장은 프로그램의 수행과 상관 없이, 개발자가 작성한 내용에 대한 설명을 작성하고 싶을때 활용합니다. 딱 한줄만 작성 가능하며, 위의 프로그램에서의 의미는, 제가 이 프로그램을 지칭하기 위한 용도로, "이 프로그램은 darttutorial-06-01.dart"라고 불러여 겠다는 의미로 작성한 겁니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>그 다음 중인 void main()에 대해서는, 향후 함수(function)를 배울 때 까지는, 다음처럼 단순하게 이해하면 됩니다. "Dart 언어로 만드는 프로그램은 main() 이라고 불리우는 영역에 속한 내용을 제일 먼저 수행한다" 정도 입니다. 당분간 우리가 배우고 실습하는 내용은 main() 이라 불리우는 { 기호와 } 기호 사이에 타이핑 하면서 작업을 해 나갈 예정입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Dart와 C의 Hello World! 프로그램 비교</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>참고로, Hello World! 라는 글자만 출력하는 이 단순한 프로그램의 시작은 C 언어입니다. 당시 "C - The Programming Language" 라는 책에서, C언어를 만든 저자가 첫번째로 예를 들어 설명한 프로그램이 다음과 같았습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:preformatted -->
<pre class="wp-block-preformatted">main( ) {
    printf("Hello, world!");
}</pre>
<!-- /wp:preformatted -->

<!-- wp:paragraph -->
<p>이 후로, 새롭게 나오는 대부분의 언어들은 최초의 프로그램 예제를 보여줄때, 이 Hello World!를 출력하는 것으로 시작하는 전통이 생겼습니다. 아울러, Dart의 print가 C에서 printf로 바뀐 것을 제외하면 같은 형태인 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>MSVC에서 Dart 프로그램 실행하기</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>darttutorial-06-01.dart 프로그램을 MSVC 안에서 실행해 봅시다. MSVC의 왼쪽 아이콘 중 다음과 같이 생긴 아이콘을 클릭 합니다. 아이콘이 벌레 처럼 생겼는데, 실제 프로그램을 개발하면서 발생하는 오류들을 벌레를 의미하는 bug로 부릅니다. 그리고, 오류를 제거하는 과정을 디버그(de-bug, debug)라고 합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"center","id":347} -->
<div class="wp-block-image"><figure class="aligncenter"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-26-오전-11.50.11.png" alt="" class="wp-image-347"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>MSVC는 dart 언어로 만든 프로그램을 실행하면서 디버그 하는 작업을 시작하면서, 다음과 같은 메뉴를 새롭게 보여줄 겁니다. 해당 아이콘을 누르면 실제 디버그를 시작합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"center","id":348} -->
<div class="wp-block-image"><figure class="aligncenter"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-26-오전-11.50.26.png" alt="" class="wp-image-348"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>대부분의 경우, MSVC에서의 Dart 프로그램의 첫 실행에서는 오류가 발생합니다. MSVC는 Dart 언어 전용의 도구가 아니고, Dart 언어를 지원할 수 있도록 확장한 겁니다. 따라서, 부족한 설정을 개발자가 직접 입력해 줘야할 필요가 있습니다. MacOS에서 MSVC를 사용하여 darttutorial-06-01.dart 프로그램을 실행하면, 다음과 같은 내용이 담긴 탭이 열리면서, 화면 하단에 "program" 필드를 제대로 수정하다는 메시지가 나올 겁니다. </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":349} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-26-오전-11.55.00.png" alt="" class="wp-image-349"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>이 화일은 MSVC가 자동으로 만들어 주는 화일로써, Dart 언어로 인식한 이 프로그램의 수행시에 참조 하려는 의도의 화일 입니다. 여기서 손을 댈 부분은 "program"으로 되어 있는 필드입니다. 현재 자동으로 생성된 내용은, 폴더의 bin 디렉토리 밑의 main.dart 라는 프로그램을 수행한다는 의미입니다. 우리는 단순하게 폴더에 바로 darttutorial-06-01.dart라는 이름의 화일을 저장했으니, "program": "bin/main.dart"를  "program": "darttutorial-06-01.dart"로 바꾼 후, 화일을 저장합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이제 Hello World!를 출력한 준비를 마쳤습니다. darttutorial-06-01.dart를 타이핑하던 탭으로 이동해서, 다시 디버그 아이콘을 누릅니다. 이제 MSVC의 상단에 다음의 그림이 나타나는 것을 확인 할 수 있습니다. 중간의 초록색 화살표를 누르면 MSVC는 우리가 타이핑한 프로그램을 실행합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"center","id":350} -->
<div class="wp-block-image"><figure class="aligncenter"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-26-오후-12.02.07.png" alt="" class="wp-image-350"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>darttutorial-06-01.dart를 타이핑한 탭 하단을 보면, 다음과 같이 바뀌어 있는 것을 볼수 있습니다. 디버그 콘솔 탭으로 이동하면, print() 구문안에 있던 Hello World! 라는 문장을 화면에 출력 한 것을 볼 수 있습니다. Exited는 프로그램의 수행을 성공적으로 마쳤다는 의미입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":351} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-26-오후-12.03.58.png" alt="" class="wp-image-351"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>이제까지 작업을 성공적으로 마쳤다면, 아래의 아이콘을 클릭해서 작업한 내용들의 결과물로 어떤 화일들이 만들어 졌는지 확인하는 것으로 마무리 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"center","id":352} -->
<div class="wp-block-image"><figure class="aligncenter"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-26-오후-12.06.07.png" alt="" class="wp-image-352"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>성공적인 작업 결과를 다시 한번 요약하면 다음과 같습니다. darttutorial-06 폴더를 만들었으며, darttutorial-06-01-.dart 소스코드를 포함 하였습니다. 그리고 MSVC가 자동으로 실행환경 화일인 launch.json 화일을 만들었습니다. 실제 darttutorial-06 폴더에는  darttutorial-06-01-.dart 소스코드만 저장이 되며, launch.json 화일은 MSVC가 별도로 관리 합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":353} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-26-오후-12.08.23.png" alt="" class="wp-image-353"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>이에 작업 내용을 닫아 봅니다. "파일"-"폴더 닫기"를 선택하면, MSVC는 작업한 내용들을 모두 제거하고, 처음 MSVC를 실행했을 때와 같이 "시작" 탭만 있는 화일로 만들어 줍니다. 여기서 '최근 항목'이라고 써있는 부분을 보면, 작업한 "darttutorial-06 폴더"가 보입니다. 이를 클릭하면, 다시 MSVC가 개발에 관련한 내용들을 읽어 들여서 업데이트 되어 있는 것을 확인 할 수 있습니다. 이렇게 함으로써, 필요할 때 폴더를 열고 작업을 수행하면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이번 글에서는 기본 문법을 시작하는 입장에서, 프로그램을 타이핑하고 수행할 MS Visual Code의 기초적인 사용방법을 알아보고, 대표적인 첫번째 프로그램인 Hello World! 프로그램을 만들고 실행해 보았습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":136,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="136" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
