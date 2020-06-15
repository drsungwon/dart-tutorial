# Dart 기초문법 - Exception Handling 

<!-- wp:paragraph -->
<p>Exception은 프로그램의 동작 중에 예상하지 못한 상황이 발생하여, 더 이상 정상적인 동작이 불가능한 에러 상황을 의미합니다. 이런 Exception이 제대로 처리되면, 에러가 발생은 했지만, 프로그램을 동작을 이어갈 수 있습니다. 반대로 제대로 처리가 되지 않으면, 프로그램은 정상적인 작업을 더이상 수행할 수 없고 종료하게 됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Exception &amp; Error in Dart Language</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 언어는 에러를 다루는 큰 범주인 Exception 내에 세부적으로 두가지 유형을 정의하고 있습니다. 첫째는 Exception이며, 둘째는 Error 입니다. 이들은 모두 고유명사로서, Dart 언어에서 에러를 의미하는 클래스들이 있는데, 각각의 클래스의 이름으로 사용됩니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Exception 클래스는 프로그램의 오류에 대한 정보를 개발자에게 전달하여, 프로그래밍을 통한 오류 해결을 도와주는 기능입니다. Dart 언어는 자주 발생하는 Exception 들에 대해서 언어안에 내장해 두었는데, 이들은 Dart 언어의 <a href="https://api.dart.dev/stable/2.7.1/dart-core/Exception-class.html">Exception Class 설명 부분</a>에서 확인 가능합니다. 대표적인 Exception이 아래에서 설명할 IntegerDivisionByZeroException 로써, 분모가 0인 나누기가 발생하는 경우를 의미합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Error 클래스는 Program이 Fail된 상태를 의미하여, 프로그래머가 피해야 하는 오류 상황을 의미합니다. 이 경우도 Dart 언어에서 미리 자주 발생하는 Error 들에 대해서 언어 안에 내장해 두었는데, 이들은 Dart 언어의 <a href="https://api.dart.dev/stable/2.7.1/dart-core/Error-class.html">Error Class 설명 부분</a>에서 확인 가능합니다. 대표적인 Error는 아래에서 설명할 인덱스 값을 제대로 주지 않아서 List 등이 오동작 하는 경우와, 함수의 입력 파라메타 갯수 혹은 타입이 틀린 경우 등 입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Exception과 Error를 구분하기는 애매할 수 있습니다. 문제가 발생 가능한 함수에 대해서, 만약 예측 가능하거나 catch 가능한 문제에 해당 한다면, Error가 아닌 Exception으로 볼 수 있으며, 이런 경우는 프로그램을 종료하는 것이 최선의 방법입니다 (An Exception "indicates conditions that a reasonable application might want to catch." [<a href="https://stackoverflow.com/questions/5813614/what-is-difference-between-errors-and-exceptions">출처</a>]). Error의 경우는 함수에 대한 설명에서 "must"와 "must not"과 같은 설명을 통해서, 에러가 나는 상황과 조건을 미리 명확하게 설명해서, 함수를 호출 하고자 하는 개발자가 Error를 만들지 않도록 해야 합니다(An Error "indicates serious problems that a reasonable application should not try to catch." [<a href="https://stackoverflow.com/questions/5813614/what-is-difference-between-errors-and-exceptions">출처</a>]). 따라서, 함수 안에서 error를 만든 다는 것은, 명확하게 제시한 조건을 어긴 예측 가능한 상황이며, 이전에 개발자는 이런 상황이 발생하지 않도록 숙지하고, 피해야 합니다. 어쩌면 이러한 이유로 (충분히 규칙을 지켜서 발생하면 안되는) Error Handling 보다는, Exception Handling이 많이 쓰이는 표현일지 모르겠습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Exception &amp; Error in Program</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>실제 간단한 프로그램을 만들어서 Exception과 Error를 유발하여 보겠습니다. 아래의 darttutorial-19-01.dart  프로그램은 간단한 두 개의 함수를 가지고 있습니다. funcDivide 함수는 두번째 입력 파라메타로 첫번째 입력 파라메타를 정수 나누기 하여 몫을 return 하도록 만들어 졌습니다. 어떤 경우에 이 문법이 제대로 동작하지 못할지 예상이 됩니까? 두번때 함수은 funcGetIndexedValue 함수는 첫번째 입력 파라메타로 받은 List에서, 두번째 입력 파라메타를 인덱스로 사용하여 element 하나를 추출하여 return 합니다. 두번째의 경우도 어떤 상황에서 에러가 나는지 예측이 되는지요? main 함수를 보면 4가지 실행 구문이 있으며, 첫째와 셋째는 정상동작을 하고 둘째와 넷째는 에러를 발생하도록 만들었으니 천천히 에러가 왜 발생하는지와 이를 어떻게 막을 지를 생각해 봅니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-19-01.dart 
// Corrected version of darttutorial-19-01.dart

funcDivide(var para1, var para2) {
  return para1 ~/ para2;
}

funcGetIndexedValue(var paraList, var paraIndex) {
  return(paraList[paraIndex]);
}

funcPrintValue(var para1, var para2) {
  print("#$para1 $para2");
}

void main() {
  var myResult;
  var myList = [1 ,2, 3];
  
  myResult = funcDivide(1, 1);
  funcPrintValue(1, myResult);

  myResult = funcDivide(1, 0);
  funcPrintValue(2, myResult);

  myResult = funcGetIndexedValue(myList, 0);
  funcPrintValue(3, myResult);

  myResult = funcGetIndexedValue(myList, 4);
  funcPrintValue(4, myResult);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>이 프로그램을 실행하면, myResult = funcDivide(1, 0); 부분에서 에러가 나고 아래와 같은 화면을 보여줍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":507} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/02/스크린샷-2020-02-01-오후-6.21.01-962x1024.png" alt="" class="wp-image-507"/><figcaption>[그림 1] IntegerDivisionByZeroException Exception 발생 화면</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>무엇이 문제 일까요? 컴퓨터 프로그램은 분모가 0으로 되어 있으면, 매우 전설적인 오류인 "Divide by Zero" Exception이 발생합니다. 따라서 1을 0으로 나누려는 시도는 Exception의 발생을 야기하고 프로그램은 정상적인 동작을 하지 못합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>이런 에러 상황을 만나는 대부분의 개발자는 일단 에러가 난 코드를 넘겨보려는 시도를 하는 경우가 종종 있습니다. 그러면, 에러 상황이 발생하는 funcPrintValue() 함수 호출 부분을 다 막아 보겠습니다. 해당 부분은 주석처리에서 봤던 다중 라인에 대한 주석 처리로 일단 막습니다. 그러면 이번에는 아래와 같은 새로운 에러 화면을 만나게 됩니다. </p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":508} -->
<figure class="wp-block-image"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/02/스크린샷-2020-02-01-오후-6.25.05-962x1024.png" alt="" class="wp-image-508"/><figcaption>[그림 2] RangeError 발생 화면</figcaption></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>화면의 왼쪽을 보면, Exception 상황인데 아래로 내려가 보면, __errorName이 "RangeError (Index)"로 되어 있고, 이유를 설명한 __errorExaplanation에 "Not in range 0..2, inclusive: 4"의 긴 설명이 되어 있습니다. 이름 부터 보면 range 값, 즉 List에서 적절하지 않은 Index를 주었다는 의미입니다. 그리고 설명을 보면, 0~2까지의 Index가 유의미 한 경우인데, 4를 주었으니 에러가 났다는 것을 구체적으로 알려줍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>try - catch Statement</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Dart 언어에서는 에러가 발생할 것 같은 구문을 실행하다가, 에러가 발생하면, 해당 에러를 대응하는 코드를 제공해서, 에러로 인한 프로그램의 중간이 없도록 하는 문법을 제공합니다. 에러가 발생할 지 모르는 코드에 대해서 실행을 시도하는 구문을 try { ... } 문법이라고 하며, 에러가 발생한 경우에 대처하도록 하는 구문을 catch { ... } 혹은 on <em>Exception/Error</em> { ... } 구문이라고 합니다. 이 문법을 사용해서, darttutorial-19-01.dart 프로그램을 개선해 보겠습니다. 에러가 발생하지 않으면 정상적인 동작을 하고, 에러가 발생하는 순간에는 에러를 무시하도록 하여, 이후에서 프로그램의 진행이 정상적으로 진행될 수 있는 부분들은 정상적으로 처리하고, 정상적인 상태에서 프로그램이 마쳐지도록 하는 것이 목표입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-19-02.dart 
// Corrected version of darttutorial-19-01.dart

funcDivide(var para1, var para2) {
  try {
    return para1 ~/ para2;
  } on IntegerDivisionByZeroException {
    print('IntegerDivisionByZeroException');
    return null;
  } catch (e) {
    print('Exception: $e');
    return null;
  }
}

funcGetIndexedValue(var paraList, var paraIndex) {
  try {
    return(paraList[paraIndex]);
  } catch (e) {
    print('Exception: $e');
    return null;
  }
}

funcPrintValue(var para1, var para2) {
  if(para2 != null) {
    print("#$para1 $para2");
  } else {
    print("#$para1 null");
  }
}

void main() {
  var myResult;
  var myList = [1 ,2, 3];
  
  myResult = funcDivide(1, 1);
  funcPrintValue(1, myResult);

  myResult = funcDivide(1, 0);
  funcPrintValue(2, myResult);

  myResult = funcGetIndexedValue(myList, 0);
  funcPrintValue(3, myResult);

  myResult = funcGetIndexedValue(myList, 4);
  funcPrintValue(4, myResult);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>main() 함수는 수정없이 동일합니다. 분모가 0인 경우에 에러가 나던 funcDivide() 함수가 매우 복잡해 진 것을 볼수 있습니다. 먼저 try { ... } 안에 원래 해야할 나누기와 return 구문이 포함되어 있는 것을 볼 수 있습니다. 영어 표현 그대로 "일단 시도하자"로 해석하면 되겠습니다. 따라서 이 구문을 수행하다가 분모가 0이면, 결국 에러가 날 겁니다. 이 에러를 처리하는 구문이 이어지는 on ... { ... } 구문과 catch( ... ) { ... } 입니다. 현재의 코드에서는 on IntegerDivisionByZeroException { ... }이 먼저 나타납니다. 이는 try 구문 안의 작업을 수행하다가 에러가 발생한 경우, 이어지는 on/catch 구문에 대해서 에러가 부합하는지를 확인 합니다. 첫번째 구문이 on IntegerDivisionByZeroException 인데, 이는 영어를 잘 읽어 보면, "0으로 정수 나누기를 하는 바람에 생긴 Exception"이라는 의미입니다. 현재 우리가 겪는 에러 상황이 바로 이 상황입니다. 따라서, main()에서 분모를 0으로 주는 경우는 이 경우에 해당합니다. 따라서, 프로그램의 흐름을 멈추지 않도록 추가적인 작업을 하고 있습니다. 현재의 경우는 일단 화면에 에러의 이유를 출력합니다. 그리고 null 값을 return 하여 프로그램이 이어져서 수행하도록 합니다. 만약 이 경우에 해당하지 않는 다른 에어라면, 다음의 구문이 이어져서 확인 되는데, 어떻게 보면 if { ... } else if { ... } else if { ... } else { ... }의 용법과 매우 흡사합니다. 현재의 경우는, 구체적으로 에러의 원인을 기술한 IntegerDivisionByZeroException가 아니면, 무조건 모든 에러를 catch(e)에서 처리하도록 한것 입니다. else { ... } 구문에 부합한다고 보면 되겠지요. 따라서, 이 경우는 화면에 Exception의 이름을 출력하곤, null 값을 return하여, 프로그램이 이어지도록 합니다. 만약, 우리가 on IntegerDivisionByZeroException { ... }을 지운다면 어떨 까요? 그렇다면, catch(e) 구문에 걸려서 처리가 되는 것을 볼 수 있습니다. 한번 on IntegerDivisionByZeroException { ... }을 지원서 직접 확인해 보기 바랍니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>funcGetIndexedValue() 함수도 마찬가지로 try와 catch 구문으로 업그레이드 되어 있습니다. try 구문안에 있는 내용을 수행하다가 에러가 나면 이어지는 catch 구문을 통해서 수행을 이어가고 있습니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>두개의 함수 안을 try와 catch 구문으로 에러가 나더라도 프로그램의 수행이 이어지도록 했습니다. 따라서, 에러가 났어야 하는 부분에서 null 값으로 처리가 된 것을 감안하여, funcPrintValue 함수안에서 조건문으로 null 여부를 확인 후, 에러가 나지 않은 부분은 결과를 제대로 출력하고, 에러가 났어야 하는 부분은 null 값을 출력한 이후, 프로그램을 정상적으로 종료하게 된다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>업그레이드된 프로그램의 수행결과는 다음과 같습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>#1 1
Exception: IntegerDivisionByZeroException
#2 null
#3 1
Exception: RangeError (index): Invalid value: Not in range 0..2, inclusive: 4
#4 null
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>darttutorial-19-02.dart 프로그램을 수정해서, try와 catch 구문을 main() 쪽으로 옮길 수 있습니다. 즉, 에러가 발생 가능한 함수를 호출하는 쪽에서 에러에 대한 대처를 하는 것도 가능합니다. 이런 방식으로 만든 프로그램이 darttutorial-19-03.dart  입니다. </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-19-03.dart 
// Corrected version of darttutorial-19-01.dart

funcDivide(var para1, var para2) {
  return para1 ~/ para2;
}

funcGetIndexedValue(var paraList, var paraIndex) {
  return(paraList[paraIndex]);
}

funcPrintValue(var para1, var para2) {
  print("#$para1 $para2");
}

void main() {
  var myResult;
  var myList = [1 ,2, 3];

  try {
    myResult = funcDivide(1, 0); 
  } on IntegerDivisionByZeroException {
    print('IntegerDivisionByZeroException');
    myResult = null;
  } catch (e) {
    print('Exception: $e');
    myResult = null;
  }

  funcPrintValue(2, myResult);
    
  try {    
    myResult = funcGetIndexedValue(myList, 4); 
  } catch (e) {
    print('Exception: $e');
    myResult = null;
  }

  funcPrintValue(4, myResult);
}
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>throw Statement</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>우리가 catch 했던 exception/error 들은 모두 Dart 언어에서 제공하는 것들로, 프로그래머가 자주 만들어서 언어적인 차원에서 제공하는 exception/error 들이라고 보면 됩니다. Dart는 프로그램이 동작하다가 이렇게 언어 자체가 검출 가능한 에러들이 발생하면, catch 구문에서 에러를 잡을 수 있도록 일종의 신호를 만들어 줍니다. 이런 동작을 throw라고 하는데, 프로그래머가 인위적으로 exception/error를 유발할 수 있습니다. darttutorial-19-03.dart에 throw 문법을 적용하기 위하여 일부 수정을 하였습니다. 이는 throw와 이어질 rethrow 구문을 설명하기 위한 예제 일뿐 구조가 적절하게 만들어진 프로그램은 아닙니다.  </p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-19-04.dart 
// Corrected version of darttutorial-19-01.dart

funcDivide(var para1, var para2) {
  try {
    if(para2 == null) {
      throw IntegerDivisionByZeroException;
    } else {
      return para1 ~/ para2;
    }
  } catch (e) {
    print('&gt;&gt; funcDivide:IntegerDivisionByZeroException');
    rethrow;
  }
}

funcGetIndexedValue(var paraList, var paraIndex) {
  try {
    return(paraList[paraIndex]);
  } catch (e) {
    print('&gt;&gt; funcGetIndexedValue: $e');
    rethrow;
  }
}

funcPrintValue(var para1, var para2) {
  print("#$para1 $para2");
}

void main() {
  var myResult;
  var myList = [1 ,2, 3];

  try {
    myResult = funcDivide(1, 0); 
  } on IntegerDivisionByZeroException {
    print('&gt;&gt; main:IntegerDivisionByZeroException');
    myResult = null;
  } catch (e) {
    print('Exception: $e');
    myResult = null;
  }

  funcPrintValue(2, myResult);
    
  try {    
    myResult = funcGetIndexedValue(myList, 4); 
  } catch (e) {
    print('&gt;&gt; main: $e');
    myResult = null;
  }

  funcPrintValue(4, myResult);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>funcDivide() 함수의 try 구문 안을 보면, 조건문으로 분모가 0인지를 확인하도록 추가 코드를 넣었습니다. 그리곤 분모가 0인 경우 앞서에서 볼수 있었던 IntegerDivisionByZeroException를 throw 문법으로 인위적으로 생성하는 구문을 볼 수 있습니다. 이렇게 만들어진 프로그래머가 발생시킨 IntegerDivisionByZeroException exception은 이어지는 catch 구문에서 정상적으로 잡을 수 있으며, 이를 통해서 화면에 정해진 문장이 출렫되는 것을 볼 수 있습니다. 여기에 추가적인 구문인 rethrow가 있는데, 이는 re-throw 즉, throw를 또 한다는 의미입니다. 이렇게 함으로써, 해당 excpetion을 funcDivide() 함수를 호출했던 쪽으로 다시 재전달 합니다. 이렇게 함으로써, 함수안에서 에러에 대해서 처리할 일을 수행하고, 필요하다면 함수를 호출한 쪽에서도 추가적인 작업을 할 수 있도록 합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>try/catch/throw/rethrow 구문을 어떻게 사용하는 것이 최적인지에 대한 답은 없으며, 프로그램의 구조와 동작에 맞는 형태를 프로그래머가 찾아가야 합니다. Exception/Error도 클래스이며, 이후 클래스를 만드는 글을 이해하면, 본인이 만든 프로그램에 맞는 새로운 Exception/Error를 만들어 낼수 있습니다. 즉, 본인 프로그램 내에서만 유효한 Exception과 Error를 정의하고, 이에 맞는 최적의 대응이 가능하도록 하게 하는 것이 가능합니다.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>finally Statement</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>마지막으로 살펴볼 문법은 finally 입니다. 이 문법에 대한 이해는 예제를 보면서 설명하는 것이 좋겠습니다. darttutorial-19-04.dart 프로그램에 finally를 추가하고, 에러가 나지 않는 경우에 대한 main() 함수의 코드를 추가한 결과가 darttutorial-19-05.dart 프로그램 입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>// darttutorial-19-05.dart 
// Corrected version of darttutorial-19-01.dart

funcDivide(var para1, var para2) {
  try {
    if(para2 == null) {
      throw IntegerDivisionByZeroException;
    } else {
      return para1 ~/ para2;
    }
  } catch (e) {
    print('&gt;&gt; funcDivide:IntegerDivisionByZeroException');
    rethrow;
  } finally {
    print(':: completed...');
  }
}

funcGetIndexedValue(var paraList, var paraIndex) {
  try {
    return(paraList[paraIndex]);
  } catch (e) {
    print('&gt;&gt; funcGetIndexedValue: $e');
    rethrow;
  } finally {
    print(':: completed...');
  }
}

funcPrintValue(var para1, var para2) {
  print("#$para1 $para2");
}

void main() {
  var myResult;
  var myList = [1 ,2, 3];

  try {
    print('#1');
    myResult = funcDivide(1, 1); 
  } on IntegerDivisionByZeroException {
    print('&gt;&gt; main:IntegerDivisionByZeroException');
    myResult = null;
  } catch (e) {
    print('Exception: $e');
    myResult = null;
  }

  funcPrintValue(1, myResult);

  try {
    print('#2');
    myResult = funcDivide(1, 0); 
  } on IntegerDivisionByZeroException {
    print('&gt;&gt; main:IntegerDivisionByZeroException');
    myResult = null;
  } catch (e) {
    print('Exception: $e');
    myResult = null;
  }

  funcPrintValue(2, myResult);
    
  try {  
    print('#3');  
    myResult = funcGetIndexedValue(myList, 0); 
  } catch (e) {
    print('&gt;&gt; main: $e');
    myResult = null;
  }

  funcPrintValue(3, myResult);

  try {    
    print('#4');
    myResult = funcGetIndexedValue(myList, 4); 
  } catch (e) {
    print('&gt;&gt; main: $e');
    myResult = null;
  }

  funcPrintValue(4, myResult);
}
</pre>
<!-- /wp:html -->

<!-- wp:paragraph -->
<p>darttutorial-19-05.dart 프로그램의 funcDivide 함수와 funcGetIndexedValue 함수를 보면, finally 구문이 마지막에 추가된 것을 볼 수 있습니다. 이름이 문법의 역할을 이야기 하는데, finally는 에러가 없는 try 구문의 수행이 마쳐지거나, 혹은 catch/on의 에러 구문의 수행이 마쳐졌을때, 어떤 경우든 상관없이 마지막에 수행이 되는 문장입니다. 따라서 에러가 없는 경우는 try에 속한 구문을 수행하고, finally에 속한 구문을 수행합니다. 에러가 있는 경우는 에러를 처리하는 구문을 수행하고, finally에 속한 구문을 수행합니다. </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>darttutorial-19-05.dart 프로그램의 수행 결과인 아래 부분을 확인하면, main() 함수의 4가지 함수 호출에서 에러가 없는 경우와 에러가 있는 모든 경우에 대해서 finally 구문이 수행된 것을 확인 할 수 있습니다.</p>
<!-- /wp:paragraph -->

<!-- wp:html -->
<pre>#1
:: completed...
#1 1
#2
&gt;&gt; funcDivide:IntegerDivisionByZeroException
:: completed...
&gt;&gt; main:IntegerDivisionByZeroException
#2 null
#3
:: completed...
#3 1
#4
&gt;&gt; funcGetIndexedValue: RangeError (index): Invalid value: Not in range 0..2, inclusive: 4
:: completed...
&gt;&gt; main: RangeError (index): Invalid value: Not in range 0..2, inclusive: 4
#4 null
</pre>
<!-- /wp:html -->

<!-- wp:heading {"level":4} -->
<h4>마무리</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>이 글에서는 에러 환경이 발생하는 경우에도 프로그램이 정상적으로 동작할 수 있도록 합니다. 첫째로 에러가 발생할 수 있는 부분을 감싸주는 try 구문이 있습니다. 둘째로 에러가 발생하면, 에러에 대한 대응을 해서 프로그램이 종료되지 않도록 하는 on/catch 구문이 있습니다. 셋째로 on/catch 구문이 처리할 exception/error를 인위적으로 만드는 (원래 전문 용어로 raise라고 합니다) throw 구문을 배웠습니다. 넷째로 Exception/Error가 발생한 함수안에서 적절한 처리를 마친후, 함수를 호출한 쪽으로 Exception/Error를 재전달하여 필요한 조치를 하도록 하는 rethrow가 있었습니다. 마지막으로 try/on/catch 구문을 통해서 에러가 발생하거나 발생하지 않더라도, 모든 경우에 대해서 마무리 작업을 할 수 있도록 해주는 finally 구문을 다뤘습니다. Exception과 Error는 모두 Dart 언어의 표준 클래스 타입니다. 이후 클래스를 직접 개발자가 만드는 구문도 나올 예정인데, Exception과 Error도 이에 해당하는 내용이니, 시간을 내어 Dart 언어 설명에서 해당 내용을 숙독해 보기 바랍니다 [<a href="https://api.dart.dev/stable/2.7.1/dart-core/Exception-class.html">참조: Exception</a>] [<a href="https://api.dart.dev/stable/2.7.1/dart-core/Error-class.html">참조: Error</a>]. 특히 Dart 언어는 에러가 발생할 만한 사항을 수행을 해봐야지 알수 있는 언어이기에 (unchecked excpetion), 이 글에서의 에러 검출 및 방지가 매우 중요한 언어입니다.</p>
<!-- /wp:paragraph -->

<!-- wp:image {"align":"right","id":267,"width":137,"height":49} -->
<div class="wp-block-image"><figure class="alignright is-resized"><img src="http://mobilelab.khu.ac.kr/wordpress/wp-content/uploads/2020/01/b05-1.jpg" alt="" class="wp-image-267" width="137" height="49"/></figure></div>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p><strong>Creative Commons License</strong> (<strong>CC BY-NC-ND</strong>)</p>
<!-- /wp:paragraph -->
