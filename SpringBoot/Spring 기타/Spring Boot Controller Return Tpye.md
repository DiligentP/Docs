```toc
```

## 스프링에서 컨트롤러의 리턴 타입에 대한 변화
---
스프링의 Controller는 리턴 타입에 따라, 각각 다른 성격의 서버를 구현 할 수 있습니다. 

## void 
---
호출하는 URL과 동일한 이름의 View Template 반환

```java
@GetMapping("/test/address") 
public void void(Model model) { 
	model.addAttribute("user", data); 
}
```

"test/address" 가 뷰의 이름으로 동작합니다.


## String
---
Spring + View Template을 사용할 때 흔히 사용하는 타입으로,
호출하는 URL과 동일한 이름의 View Template 반환

```java
public String test(){
	return "index";    
}
```

ex )
`index.html`  `index.jsp` 

등과 같이 자동적으로 뷰가 반환됩니다.


## ModelAndView
---
Model과 View를 모두 설정가능합니다.

```java
public ModelAndView test(){
	ModelAndView mav = new ModelAndView("index"); 
	modelAndView.addObject("data", "test");    
	return mav;
}
```

### redirect
```java
@GetMapping("/test") 
public ModelAndView test() { 
	ModelAndView mav = new ModelAndView(); 
	mav.setViewName("redirect:/api/test"); 
	return mav; 
}
```


## JSON Object 
---
JSON/XML 같은 데이터를 반환하기 위해 사용합니다.

메서드에 @ResponseBody 를 적어주거나, 컨트롤러를 @RestController 로 선언하여 사용할 수 있습니다.

### ResposeBody
아래 예제는 @ResponseBody의 예 입니다.

```java
@Controller
public class TestController {
	@ResponseBody
	@GetMapping("/test/account")
	public Account void(Account Account) { 
		return account; 
	}
}
```

Account 객체를 반환하는 형태로써 클라이언트에서는 JSON 데이터로 Account 객체를 받게 됩니다.

### RestController
@RestController 애노테이션을 붙여줌으로써 @Controller와 @ResponseBody 애노테이션 두 가지를 모두 사용하는 효과를 낼 수 있습니다.

```java
@RestController 
@RequestMapping("/test") 
public class TestController { 
	@GetMapping 
	public Account test(Account account) { 
		return account; 
	} 
}
```


## ResponseEntity
---
Spring을 REST 서버로 사용하기위해서는 ResponseEntity 사용이 필수입니다.

@ResponseBody의 경우에는 리턴 값이 오로지 Data 뿐입니다.
하지만 실무에서 사용하는 API는 Data(데이터)만 존재 하지 않고, Header(헤더), CodeState(상테코드) 등의 정보를 포함합니다.

이를 사용하기 위해서 필요한 것이 바로,  ResponseEntity 입니다.

```java

```


HttpEntitiy는 **HttpHeader**와 **HttpBody**, **HttpStatus**를 포함하는 클래스입니다.
ResponseEntity는 HttpEntitiy의 구현체 입니다.



참고
[[Spring Boot] ResponseEntity란 무엇인가? :: Gyun's 개발일지 (tistory.com)](https://devlog-wjdrbs96.tistory.com/182)





