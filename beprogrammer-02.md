# [02]왜 Dart 언어를 선택했는가?

<!-- wp:paragraph -->
<p>Dart 언어를 선택한 이유는 2020년 현재 제가 가장 관심 갖는 프로그래밍 언어 이기도 하지만, 제 전공인 컴퓨터 네트워킹과 취미인 프로그래밍을 함께 할 수 있는 개인적 취향, 그리고 앞으로의 발전 가능성을 고려한 선택으로 이해하면 좋겠습니다. 개인적인 취향 이라고 하면 다소 황당하니, 객관적 근거를 아래의 그림을 토대로 설명해 봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":250} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/languages_for_backup-1024x768.png" alt="" class="wp-image-250"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>소프트웨어 개발자들이 사용하는 프로그래밍 언어는 몇개나 될까요? 오픈소스 커뮤니티의 성지인 GitHub에 따르면, 2019년에 업로드 된 프로그램들에 사용된 프로그래밍 언어의 갯수는 총370개 라고 합니다 [<a href="https://octoverse.github.com/">출처</a>]. 그림에는 대표적으로 많이 사용 되는 언어들의 최초 Release 년도, 활용 분야(모바일 앱, 서버, 데스크탑, 웹), 그리고 활용 분야별로 사용해야 하는 Framework를 나열하였습니다. Dart를 선택한 이유를 하나 하나 짚어 보면 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>첫째로</strong>, Full-Stack 프로그래머가 될 수 있습니다. Dart는 유행하는 말로 Full Stack, 다시 말해서 사용자가 사용하는 모바일 앱(안드로이드, iOS)과 서버 프로그램의 개발이 가능한 언어입니다. 특히 Flutter라는 User Interface (UI) Framework를 사용하여, 다양한 모바일 운영체제(안드로이드, iOS)의 UI/UX(User Experience)를 하나의 소스 코드로 개발하는 것이 가능합니다. 통상 Cross-Platform이라고 불리는 개발 방법 입니다. 이렇게 사용자 쪽에 가까운 어플리케이션(줄여서 앱)을 Front-End라고 할때, Front-End가 정보를 가져오는 반대 방향에 서버(Server)라고 불리우는 대형 컴퓨터들이 있으며, 이를 통상 Back-End라고 부르는데, Dart는 이런 서버 프로그램의 개발도 가능합니다. 이외에 MS윈도우/MacOS/Linux와 같은 데스크탑 컴퓨터의 프로그램과 웹의 개발도 가능합니다. 특히 다른 언어들은 활용 분야별로 서로 다른 Framework를 사용하기에, 알아야 하는 사항들이 다소 많고, 활용해야 하는 기술이 많으나, Dart는 최근의 기술로서 (비록 많은 부분에서 아직 미진한 부분이 많지만) 다양한 분야를 Flutter 하나의 기술로 일관된 UI/UX를 제공하도록 하고 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>사실 이 부분에서는 개인적으로 고민이 있는 부분이기도 합니다. 최근에 취미 삼아 손댄 기술은 JavaScript 입니다. JavaScript는 Dart를 제외하면, Full-Stack 프로그래머라는 단어에 가장 부합하는 언어입니다. 소프트웨어를 전공으로 하지 않는 학생들과 개발자들이 많이 사용하는 언어이기도 합니다. ES6(ECMA Script 6) 버전 이후로는 언어적인 능력도 왠만한 프로그래밍 언어 수준에 육박하는 좋은 언어가 되었습니다. 성능면에서도 (아래 네번째 문장의 참조 자료를 보면 알겠지만) 계속적으로 개선이 이루어 지는 언어입니다. 서버 프로그램 개발시에도 Node.js를 사용하는 경우는, (C/C++과 비교했을 경우는 상대적으로 부하가 큰 편이지만,) Python 등의 언어와 비교하면 탁월한 수준의 성능을 나타내고 있습니다. 하지만 활용 분야별로 파편화된(fragmented) 프레임워크들이 너무 많아 학습이 많이 필요한 부분과, Script 언어에서 시작한 연유로 디버그에 애로가 많다는 점을 고려한다면, Dart의 첫인상은 저 같이 C/C++을 뿌리로 두는 프로그래머 들에겐 확실하게 매력적인 언어라고 생각합니다. 그렇다고 JavaScript가 구축한 영역을 당장 Dart가 대체 하기는 어려울 겁니다. 적은 자료/커뮤니티를 고려하면, Dart는 좀 더 지켜볼 언어로 사료됩니다. 그래도 재미삼아 시작하는 프로젝트인데, Dart를 써보는 것도 나쁘진 않겠죠?</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>둘째로</strong>, Google(구글)이 만든 언어 입니다. 사실 구글은 Dart를 2011년에 공개했습니다. 하지만 지금까지 Dart를 아는 사람은 많지 않은 것이 사실입니다. Dart를 다룬 해외/국내 서적과 인터넷의 정보가 매우 적은 편입니다. 따라서 구글이 만들었다는 이유만으로 언어를 배우는 것은 사실 큰 의미는 없습니다. (2018년 초반에는 배울 필요가 없는 언어에서도 최상위권에 속한 경험이 있는 언어입니다.) 그런데, 이렇게 인기 없던 Dart는 2018년 대비 2019년에 관심도가 무려 532% 증가합니다 [<a href="https://octoverse.github.com/">출처</a>]. Python이 151%인 것을 감안하면 엄청난 증가율 입니다. 이유는 첫번째 이유에서 언급한 Flutter의 출현입니다. 2017년 Flutter의 알파 버전이 나온 후, 긴가 민가 했던 분위기는, 2018년 12월 4일에 구글이 Flutter 1.0의 최초 안정된 버전을 공개 하면서 급 반전에 성공합니다. 이후 안드로이드와 iOS에 동일 어플리케이션을 개발해야 하는 회사들의 성공사례가 이어지면서, 구글이 이 기술을 계속 가져 갈 것이라는 기대감과 이제 제대로 써 볼만 하다는 신뢰감이 늘게 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>셋째로</strong>, Adobe가 관심을 갖는 언어 입니다. 모바일 앱을 개발할 때 매우 중요한 분야가 UI/UX 분야입니다. 통상 앱이나 웹서비스는 사용자가 접하는 UI/UX를 먼저 설계하며, 이를 전문 디자이너 들이 작업을 하는 경우가 대부분 입니다. 이렇게 정리한 UI/UX를 개발자가 실현해야 하는데, 문제는 둘을 이어주는 기술이 많이 불편합니다. UI/UX 디자이너들은 사용자가 접하는 화면을 채울 그림/메뉴 들과 이들 간의 상호 작용을 만들어 냅니다. 이때에 작업한 자원(그림, 아이콘, 폰트, 내용, 메뉴 체계, 프로토타입 등)을 개발자가 효과적으로 재활용 한다면, 개발 결과물과 당초의 디자인 간의 차이도 줄고, 개발도 용이합니다. 이런 분야에 많이 활용되는 도구들은 그림에서 나타난 것과 같이, <a href="https://www.sketch.com/">Sketch</a>, <a href="https://zeplin.io/">Zeplin</a>, <a href="https://www.invisionapp.com/">InVision</a> 등 입니다. 세개의 소프트웨어를 써야 하는 번거러움도 문제지만, 디자이너의 결과물을 개발자가 받아서 사용하기도 어려운 형태입니다. 이 와중에 Adobe가 모바일 앱 분야의 UI/UX 도구로 만들어서 점차 사용자가 늘어나는 소프트웨어인 Adobe XD가 있는데, Adobe와 구글은 함께 협력하여, Adobe XD의 결과물을 Dart 언어의 Flutter Framework로 변환해 주는 Plugin을 함께 만들었고, 오픈소스로 공개하였습니다 [<a href="https://theblog.adobe.com/xd-flutter-plugin-generate-dart-code-design-elements/">출처</a>]. 이런 이유로 잘만 된다면, 미래에는 UI/UX 부터 모바일/데스크탑/서버/웹을 관통하는 개발체계를 갖춘 유일 무이한 언어로서 Dart가 자리 매김할 가능성도 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>넷째로</strong>, 비교적 최근에 만들어진 언어 입니다. 90년대 중반까지 FORTRAN, COBOL, BASIC, PASCAL 등 목적에 맞는 언어들을 사용하다가, C언어가 인기를 얻으면서 모든 분야를 통일하는 듯 했습니다. 하지만, 이후로 C++이 나오기는 했지만, 웹기술 등에 대한 대응이 어려웠고, 언어자체의 난이도도 높기에, 프로그래밍 언어는 다시 춘추전국시대로 들어갑니다. 이후 프로그래밍 언어는 목적에 맞도록 설계되고, 특정 분야가 정해지면 특정 언어를 사용하는 분위기로 되었습니다. 이런 입장에서 운영체제나 커널을 다루는 분야에서는 C/ C++/ Assembly 외의 대안은 없어 보이지만, 그외 분야라면 (거의 모든 분야를 다루는) 범용 언어로서 Dart를 권해 볼만 합니다. 특히 언어적으로 C/C++과 유사하면서, Python 스러운 부분도 섞여 있는 등 나름 가장 최신의 언어에 속하기에, 기존 언어들의 장단점을 잘 모아놓은 언어로 보입니다. 애플도 Swift를 오픈소스로 헌정했지만, 애플 장비 들을 제외하면 이렇다 할 도구들이 미비한 상황에서, Dart는 빠르게 지원 도구들을 늘리고 있고, Android Studio와 Xcode에도 통합이 되는 등 기존 개발환경을 용이하게 활용 가능합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>다소 정성적인 이유로 Dart를 선택한 감이 있습니다. 정량적인 부분을 함께 고려해야 하는데, 아직까지 Dart를 정량적인 부분에서 성능 평가한 사례는 찾기 어렵습니다. 이 부분은 개인적으로 2020년에 연구 주제로 삼아 심심할때 성능평가와 분석을 해 볼 예정이니, 결과가 나오면 업로드 하도록 하겠습니다. 참고로 다른 프로그래밍 언어별 성능 평가들은 아래의 사이트 들에서 확인 가능합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>Precise calculation of pi [<a href="https://github.com/niklas-heer/speed-comparison/blob/master/README.md">출처</a>]</li><li>NBody/Mandlebrot/Tree Alloc &amp; Dealloc/Power method [<a href="http://15418.courses.cs.cmu.edu/spring2016/lecture/dsl/slide_006">출처</a>]</li><li>Simple array manipulation [<a href="https://www.freecodecamp.org/news/what-programming-language-should-i-learn-first-19a33b0a467d/">출처</a>]</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Dart에 대한 소개는 간단히 마치고, 이제 Dart를 실제 사용해 보도록 합시다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":267,"align":"right","width":137,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="137" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
