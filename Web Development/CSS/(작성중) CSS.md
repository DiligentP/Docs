#CSS 
## CSS 기본

```css
[CCS 초기화]
list-style:none; :: 목록 태그 앞 점 삭제
text-decoration:none :: 텍스트 색이랑 밑줄 삭제

width:[value] :: 가로 크기
height:[vlaue]  :: 세로크기

color:[color]  :: 글자색
background-color:[color] :: 배경색

text-align:[align]  :: 텍스트 정렬
line-height:[value]  :: 텍스트 높이

display: inline-block :: 공간을 인라인 블럭만 사용.
```

### display (어떻게 보이느냐)

```css
div = 블록, span = 인라인
display:none  :: 아예 안보임
display:block  :: 블록으로 바뀜    
dispaly:inline :: 인라인으로 바뀜  

display:flex :: 플렉스로 바뀜  비율로 나눌수 있음 
자식1 : flex2
자식2 : flex1
자식3 : flex1
2:1:1 비율로 나눠진 것을 확인 할 수 있음.
```

[Flexbox](https://www.notion.so/Flexbox-4c039eb803674bb8a19c737985cec4d4)

### position (위치)

```css
position:relative  :: 다른 요소들과 관계된 위치를 기준으로 움직임.
position:absolute :: 독립적으로 좌표만을 따르는 기준으로 움직임.
position:fixed :: html 문서가 아닌 브라우저를 기준으로 고정됨
```

### border (둘레)

```css
[border] - 둘레
border:[value] solid [color] :: 둘레 선긋기
border-bottom:[value] solid [color] :: 아래쪽
border-top:[value] solid [color] :: 위쪽
border-left:[value] solid [color] :: 왼쪽
border-right:[value] solid [color] :: 오른쪽

border-collapse: collapse :: 선 무너트려 하나로 합쳐줌.

border-radius:[value] :: 보더 반지름 -> 보더 테두리 둥그렇게 할때 사용.

```

### padding - 면적

```css
[padding] - 면적
padding:[value] ::패딩을 입은 것처럼 면적이 커짐.
```

### margin - 간격

```css
[margin] - 간격
margin:[value] :: 면적은 그대로이고 서로의 간격만 늘림

```