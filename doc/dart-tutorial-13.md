# MS Visual Code를 통한 Debug 

<!-- wp:paragraph -->
<p>지금까지 Dart 언어를 배워 왔으며, 이번 글에서는 MSVC를 통해서 지금까지 내운 Dart 언어의 특징을 보다 효율적으로 디버그 하기 위한 방법을 설명 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Sample Program for Debug</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>MSVC의 디버그 기능을 활용해 보기 위해서 간단한 예제 프로그램을 아래의 darttutorial-13-01.dart 처럼 작성 하였습니다. 간단히, 지금까지 배운 내용들에 대한 기능의 에러를 어떻게 MSVC를 통해서 빠르고 정확하게 점검 하느냐에 집중 하겠습니다. 프로그램 자체는 특별한 의미가 있지 않습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>
// darttutorial-13-01.dart 

int sampleFunction(var varA, [var varB = 1]) {
  var localSum;
  localSum = varA + varB;  
  print("[sampleFunction] $localSum");
  return localSum;
}

void main() {
  var num1 = 1;
  var num2 = 5;
  var num3;
  
  print("[main] start with num3:$num3.");

  num3 = sampleFunction(num1, num2);

  for(var temp = 1; temp < 3; temp++) {
    num3 = num3 + sampleFunction(num1 + temp, num2 + temp);
  }

  print("[main] end with num3:$num3.");
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>미리 보는 수행 결과는 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>[main] start with num3:null.
[sampleFunction] 6
[sampleFunction] 8
[sampleFunction] 10
[main] end with num3:24.
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이제 디버그 기능을 수행하기 전의 화면은 다음과 같이 나타나 있어야 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":426} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-27-오후-5.08.20.png" alt="" class="wp-image-426"/><figcaption>[그림 1] darttutorial-13-01.dart의 디버그 준비 단계</figcaption></figure>
<!-- /wp:image -->

<!-- wp:heading {"level":4} -->
<h4>Break Points</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>프로그램을 개발하다 보면, 에러가 의심이 되는 지점에 멈추고 싶을때가 있습니다. 이런 경우를 위해서 대부분의 개발도구 지원하는 기능은 break points 설정 기능입니다. 원하는 지점을 지정하여, 프로그램이 해당 지점에 도착하면 실행을 잠시 멈추는 것 입니다. Debug 모드로 작업하기 위해서, MSVC를 debug 모드로 전환합니다. 그리고 제대로 프로그램이 타이핑 되었는지를 확인 하기 위하여, 미리 프로그램을 수행시켜 봅니다. 이렇게 debug 모드로 바꾼후, 프로그램을 실행시킨 후의 화면이 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":427} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-27-오후-5.11.43.png" alt="" class="wp-image-427"/><figcaption>[그림 2] darttutorial-13-01.dart의 디버그 모드 전환 및 실행 화면</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>MSVC에서 원하는 지점에 멈추는 작업을 실제로 수행하겠습니다. 목표 작업은 sampleFunction 함수 내부에서 제대로 계산이 이루어 지는가 입니다. 따라서 sampleFunction 함수 안에 진입을 하면, 프로그램을 멈추도록 합니다. 이를 위해서, sampleFunction 함수의 첫번째 실행 라인인 라인 번호 4의 왼쪽으로 마우스를 이동해 봅니다. 그러면, 갑자기 붉은 색의 원이 나타날 겁니다. 이것이 break points 입니다. 해당 라인에 break points를 설정하고자 하면, 붉은 원을 마우스로 클릭합니다 그러면, 보다 붉은 원이 라인 번호의 왼쪽에 확정적으로 고정되는 것을 볼수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"center","id":428} -->
<div class="wp-block-image"><figure class="aligncenter"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-27-오후-5.16.23.png" alt="" class="wp-image-428"/><figcaption>[그림 3] Break Points 설정 예제</figcaption></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>이 상태에서 프로그램을 수행 시킵니다. 그러면 그림 4와 같은 화면이 나타납니다. 여러 변화가  있을텐데, 먼저 화면을 파란색으로 되어있던 테두리가 주황색으로 바뀌어 있습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":431} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-27-오후-5.17.59.png" alt="" class="wp-image-431"/><figcaption>[그림 4] darttutorial-13-01.dart를 라인 4에서 Break Point로 멈춘 상태</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>또한, break points를 설정한 위치에 노랑색 화살표 도형이 있는 것을 볼수 있는데, 이는 프로그램이 이 지점에서 멈추어 있다는 것을 의미합니다. 그리고 왼쪽 화면에 "변수"라고 쓰여 있으며, 그 하단에 아래와 같이 나타난 것을 볼수 있습니다. Locals란 앞서 함수의 설명에서, 함수안에서 만들어진 변수들을 지칭하는 것입니다. 함수 sampleFunction 안으로 현재 들어왔는데, 해당 함수의 진입과 동시에, 이 함수의 내부 local 변수이면서 입력 파라메타인 varA와 varB가 각각 1과 5의 값을 가지고 있는 것을 보여줍니다. 따라서, 앞으로 함수 안의 값들이 어떤 값을 가지고 있는지, 해당 화면을 보면서 확인하면 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"center","id":429,"width":338,"height":133} -->
<div class="wp-block-image"><figure class="aligncenter is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-27-오후-5.21.10.png" alt="" class="wp-image-429" width="338" height="133"/><figcaption>[그림 5] Local 변수 자동 디스플레이</figcaption></figure></div>
<!-- /wp:image -->

<!-- wp:heading {"level":4} -->
<h4>In-line Tracing</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>멈춰 있는 프로그램을 한줄 한줄 수행하게될 좋은 기능이 다음과 같이 생긴 (화면의 상위, 중간 부분에 있는) 여섯개의 아이콘들 입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"center","id":430,"width":337,"height":55} -->
<div class="wp-block-image"><figure class="aligncenter is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-27-오후-5.24.19.png" alt="" class="wp-image-430" width="337" height="55"/><figcaption>[그림 6] 디버그 모드 지원 아이콘</figcaption></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>왼쪽 아이콘 부터 차례대로 설명하면, 첫번째 아이콘은 멈춰있는 프로그램의 수행을 재개한다는 의미입니다. 이 단추를 누르게 되면, 다시 프로그램의 정상적인 수행을 이어 갑니다. 만약 다음에 만날 break point가 있다면, 해당 break point에서 다시 멈추게 됩니다. darttutorial-13-01.dart 프로그램의 경우라면, 총3번 sampleFunction 함수를 호출하므로, 다시 4번 라인에서 멈추게 되며, 이때에 왼쪽 화면을 보면 Locals의 varA는 2, varB는 6으로 바뀐 것을 볼 수 있습니다. 다시 첫번째 아이콘을 누르면, 다시 라인 4번에서 멈추며, Locals의 varA는 3, varB는 7으로 바뀐 것을 볼 수 있습니다. 한번더 첫번째 아이콘을 누르면 프로그램은 더이상의 break point가 없으므로, 프로그램은 종료하게 됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>마지막 여섯번째 아이콘은 프로그램을 종료하게 됩니다. 이를 위해서, 라인 4에 break point를 유지한 상태에서 다시 디버그를 시작하여, [그림 4] 상태로 전환 합니다. 이 상태에서 여섯번째 아이콘을 누르면, 디버그 모드가 종료되고, 테두리가 다시 파란색으로 바뀐 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>다시 디버그 모드로 전환해서 [그림 4]의 상태로 유지합니다. 이번에 사용할 기능은 두번째 아이콘 입니다. 라인 4에서 프로그램이 멈추었다는 것은, 라인 4를 시작하기 바로 전단계인 것을 의합니다. 따라서 두번째 아이콘을 한번 누르면, 라인 4를 실행하고 라인 5로 이동합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":432} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-27-오후-5.41.22.png" alt="" class="wp-image-432"/><figcaption>[그림 7] 라인 4에서 라인 5로의 in-line 디버그</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>프로그램의 수행 위치를 나타내는 노랑색 화살표가 5번 라인을 가르키고 있는 것을 볼 수 있습니다. 그리고 왼쪽을 보면 localSum 변수가 만들어져 있는 것을 볼 수 있습니다. 그리고, 두개의 입력 파라메타를 더하는 작업을 아직 진행하지 않았기에, 초기화되지 않은 변수가 갖는 값인 null로 채워져 있는 것을 볼 수 있습니다. 한번 더 두번째 버튼을 누르면, localSum의 값이 6으로 바뀐 것을 볼 수 있습니다. 다시 두번째 아이콘을 꾹꾹 누르다보면, print 구문으로 화면에 출력이 나오고, sampleFunction 함수를 벗어나 main의 호출 부분으로 돌아가는 것을 볼수 있습니다. 이 기능을 사용해서 한줄 한줄 프로그램을 수행해 가면서 본인이 개발한 프로그램이 제대로 동작하는지를 확인할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>두번째 단추와 세번째 단추는 비슷하지만 차이가 있는데, 이를 확인해 보겠습니다. 이를 위해서 여섯번째 아이콘을 눌러서 디버그를 중지 합니다. 그리고, 라인 4에 설정했던 break point를 다시 한번 눌러서 해제합니다. 그리고, 라인 20의 옆에 break point를 설정합니다. 이제 다시 프로그램을 실행시켜서 라인 20에서 멈추도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":433} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-27-오후-5.50.03.png" alt="" class="wp-image-433"/><figcaption>[그림 8] 라인 20에서 Break Point를 설정하여 멈춘 상태</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>이 상태에서, 두번째 아이콘을 눌러 봅니다. 그러면, sampleFunction 함수 안으로 들어가지 않고, sampleFunction 함수를 수행한 후 결과 만을 가져 옵니다. 따라서 함수를 실행하기 전에, 함수가 안정적이라고 믿어지기에 굳이 안으로 들어갈 필요가 없는 경우는 두번째 아이콘을 누르면 됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>그렇지 않고, 함수 안으로 들어가서 함수의 동작을 내부까지 들어가서 확인하고자 한다면, 세번째 아이콘을 누르면 됩니다. 프로그램의 디버그를 중지하고, 다시 [그림 8]의 상태로 돌아 갑니다. 이 상태에서 세번째 아이콘을 누르면, 함수 안으로 들어가서 프로그램의 흐름을 이어가는 것을 볼 수 있습니다. 따라서, 아이콘의 파란 점이 의미 하는 것이 바로 함수를 의미하고, 두번째 아이콘은 함수에 굳이 들어가지 않은 상태에서 결과만 취하는 의미이고, 세번째 아이콘은 함수 안으로 들어가는 것임을 알 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>마지막으로 점에서 나오는 다섯번째의 의미는 충분히 상상이 가능하리라 봅니다. 함수안에서 디버그를 하다가 함수의 남은 부분을 수행하고 함수 밖으로 나오는 기능입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Inspection</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>마지막으로 살펴볼 기능은 프로그램 수행 중의 상태를 간단한 코드를 통해서 확인해 보는 방법입니다. 이를 위해서 다시 [그림 8]의 상태로 프로그램을 동작 시킵니다. 그리고, 왼쪽의 "조사식"을 가봅니다. 현재는 빈칸으로 되어 있는데, 조사식 밑의 민칸을 클릭하거나 혹은 조사식이라는 글자에 마우스를 올려놓으면 오른쪽으로 안보이던 '+' 기호가 나타므로, 이 기호를 누르면 프롬프트가 나타나고 입력이 가능합니다. 여기서 num3를 타이핑 한후 엔터를 치고, 다음으로  sampleFunction(3,6)을 타이핑 하고 엔터를 칩니다. 그러면 다음과 같이 결과가 나오는 것을 볼 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":435} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/스크린샷-2020-01-27-오후-7.27.14.png" alt="" class="wp-image-435"/><figcaption>[그림 9] 조사식 창을 통한 프로그램 상태 모니 터링</figcaption></figure>
<!-- /wp:image -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>간단하지만 꼭 필요한 기능 중심으로 MSVC의 주요 기능을 알아 보았습니다. 이 정도 기능만 이해해도 프로그램을 개발하면서 디버그 하는데 큰 도움을 받을 것 입니다. MSVC는 이보다 더 많은 기능을 제공하고 있으며, 특히 extension을 통해서 추가적인 디버그 기능을 확장할 수 있습니다. 도구를 잘 다루는 것도 생산성 측면에서 중요한 경쟁력이므로, 틈틈히 기능들을 알아가고 하나 하나 활용해 보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":136,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="136" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
