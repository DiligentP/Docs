```toc
```
---
## 주석의 종류
- 문서주석 `/** */`
- 구현주석 `/* */`   또는  `//`)
---
### 문서주석
	1. 자바클래스, 인터페이스, 생성자, 메서드, 필드 등을 설명할 때 사용한다.
	2. /** */로 경계를 결정한다.
	3. 클래스, 인터페이스 또는 그 맴버 하나당 하나씩 넣는다
	4. 선언 바로전에 나와야 한다.
---
### 구현 주석
	1. block 주석으로 작성
	2. 파일, 매서드, 자료구조, 알고리즘에 대한 설명 제공
	3. 파일의 시작이나, 메서드 전에 사용
	4. 수정할 일이 없는 특별한 주석은 `/*-...*/` 로 표기
	5. 코드의 나머지로 부터 분히라기 위해 처음 한줄을 비워둠
---
### 기타 주석 처리
	1. 코드 내부의 주석은 `//` 로 표기
	2. 의문점이나 해결하지 못한 것은 임시주석 사용 /* ... */
---

## 주석 사용법
```java
import ...
/**
* 해달 클래스에 대한 기능과 용도를 적어 줍니다.
* @author 최종 수정자
* @version 1.0, 작업 내용
*/
public class Controller {
	/**
	* 매서드에 대한 설명은 간결하게 적습니다.
	* @param String arg : 매개변수 설명
	* @return ex)유저 정보를 반환합니다.
	* @exception ex) 사용자가 검색되지 않을경우 UserNotFoundException을 반환합니다.
	*/
	public void method(String arg) {
		// 코드 내부 주석
	}
}
```


```java
/**
* @apiNote     API 참고사항
* @throws      던지기
* @since       시작시간 , 시작한 버전
* @deprecated  지원 중단
* @exception   예외 사항
* @see         관련 주제
* @implNote    구현
* @implSpec    구현
* @hidden
*/


```
<참고>
[JavaDoc을 쓰기 위한 주석달기 방법 (tistory.com)](https://6kkki.tistory.com/1)
[좋은 주석을 다는 법 - Java (tistory.com)](https://way-be-developer.tistory.com/215)