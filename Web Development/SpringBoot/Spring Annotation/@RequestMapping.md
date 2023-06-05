@RequestMapping은 현재 클래스의 모든 매서드들의 기본적인 URL 경로가 된다.

```java
package org.test.controller;

import org.springframework.stereotype.Controller;

@Controller
@RequestMapping("/main/*")
public class MainController {
	
}
```

/main/* 이라는 경로로 지정했다면 다음과 같은 URL은 모두 MainController에서 처리된다.

-   /main/aaa
-   /main/bbb

---

@RequestMapping 어노테이션은 클래스의 선언와 매서드 선언에 사용할 수 있다.

매서드에 사용할때, @RequestMapping의 경우 몇 가지의 Method 속성을 추가할 수 있다.

Method 속성은 흔히 GET방식, POST방식을 구분해서 사용한다.

```java
@RequestMapping(value = "/basic", method = {RequestMethod.GET} )
@RequestMapping(value = "/basic", method = {RequestMethod.POST} )
@RequestMapping(value = "/basic", method = {RequestMethod.PUT} )
@RequestMapping(value = "/basic", method = {RequestMethod.DELETE} )
public void basicGet() {
		
		log.info("basic get..................");
}
```