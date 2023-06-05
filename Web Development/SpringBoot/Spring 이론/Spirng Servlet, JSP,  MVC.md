#Servlet #JSP #MVC

	회원가입을 만드는 간단한 프로그램이 있다고 가정합니다. 각 Servlet, JSP, MVC는 다음과 같습니다.

## Servlet
	서블릿은 자바 코드에 HTML 코드를 끼워 넣는 방식으로 볼 수 있습니다.
```java
@WebServlet(name = "memberSaveServlet", urlPatterns = "/servlet/members/save")
public class MemberSaveServlet extends HttpServlet {
	private final MemberRepository memberRepository = MemberRepository.getInstance();

	@Override
	protected void service(HttpServletRequest request) {
		...
		printWriter.write(<html> ... </html>)
	}
```



## JSP
	 JSP는 HTML 코드에 Java 코드를 끼워 넣는 방식으로 볼 수 있습니다.
```java
<%@ page import="hello.servlet.basic.domain.member.Member" %> 
<%@ page import="hello.servlet.basic.domain.member.MemberRepository" %> 
<%@ page contentType="text/html;charset=UTF-8" language="java" %> 

<% 
	final MemberRepository memberRepository = MemberRepository.getInstance(); 
	final String username = request.getParameter("username"); 
	final int age = Integer.parseInt(request.getParameter("age")); 
	final Member member = new Member(username, age); memberRepository.save(member); 
%> 
<html> 
	<head> 
		<title>Title</title> 
	</head> 
	<body>
		 성공 
		 <ul> 
			 <li>id=<%=member.getId()%> </li> 
			 <li>username=<%=member.getUsername()%> </li> 
			 <li>age=<%=member.getAge()%> </li> 
		 </ul> 
		<a href="/index.html">메인</a> 
	</body> 
</html>
```

## MVC
	MVC 패턴은 서블릿과 JSP를 보완한 방식으로, 서블릿과 JSP에서 사용하던 비지니스 로직을 Model, View, Controller로 역할을 나눈것을 말합니다.

```java
@Controller
public class MainController {

	@GetMapping("/hello")
	public String Hello(Model model) {
		model.addAttribute("Hello","hi")
		return "Hello"
	}
}
```

```HTML
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> <html> <head> <title>Hello</title> 
</head> 
<body>
...
<ul> 
<li>id=${Hello.id} </li> 
<li>username=${Hello.username} </li> 
<li>age=${Hello.age} </li> 
</ul>
...
</html>
```


참고
[[Spring] 서블릿과 JSP의 차이 (tistory.com)](https://steady-coding.tistory.com/463)
