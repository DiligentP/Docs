#python

## List 생성
```Python
a = [1,2,3]
a = ['A','B','C']

# 빈 리스트 만들기
a = []
a = list()
```
---
## List 연산
### 덧셈
```python
a = ["BlockDMask", 333]
b = [1, 2, 3]

print(a + b)  # ['BlockDMask', 333, 1, 2, 3]
```

### 곱셈
```python
a = [1, 2, 3]
b = a * 3
print(b)

c = a * 0
print(c)

# [1, 2, 3, 1, 2, 3, 1, 2, 3]
# []
```

---

## List 인덱싱, 슬라이싱
	index는 0부터 시작합니다.
### 인덱싱
```python
a = ['a', 'b', 'c', 'd', 'e']

# 첫번째 인덱스 출력
print(a[0]) # a

# 마지막 인덱스 출력
print(a[-1]) # e

```

### 슬라이싱
```python
a = ['a', 'b', 'c', 'd', 'e']

# 처음부터 끝까지 출력
print(a[0:])

# a[0] 부터 a[2] 까지 출력해라.
print(a[0:3]) # a b c
```


---
## List 함수

### len() 함수
```Python
# 리스트 길이 구하기
a = [1,2,3,4,5]

print(len(a)) #5
```

### del() 함수
``` Python
a = [1,2,3,4,5]

# 리스트의 특정 요소 삭제
del(a[1])  # 1,3,4,5

a = [1,2,3,4,5]
# 리스트의 특정 범위를 삭제
del(a[1:3]) # 1,4,5
```

---

## List 메서드
### append
```python
a = [1,2,3,4,5]

# 리스트에 값 추가
a.append(6) # [1,2,3,4,5,6]
```

### insert
```python
a = [1,2,3,4,5]

# 리스트 특정 위치에 값 추가
a.insert(0,0)  # [0,1,2,3,4,5]
```

### remove
```python
a = [1,2,3,4,5]

# 리스트에서 특정 값 제거
a.remove(1)  # [2,3,4,5]
```

### pop
```python
a = [1,2,3,4,5]

# 리스트에서 특정 값 제거
b = a.pop()  # b=5, a=[1,2,3,4]
```

### extend
```python
a = [1,2,3,4,5]
b = [6,7,8]

# 리스트에 다른 리스트 붙이기
a.extend(b) # [1,2,3,4,5,6,7,8]
```

### copy
```python
a = [100, 200, 300]
b = a.copy()

print(a) # [100, 200, 300]
print(b) # [100, 200, 300]
print(id(a))  # 1825640975424
print(id(b))  # 1825642082560

# 주소값이 다르므로 다른 리스트라고 할 수 있음.
```

### reverse
```python
a = [100, 200, 300]
a.reverse()

# 뒤집은 리스트를 반환하는 것이 아닌, 현재 리스트를 뒤집는다.
print(a) # [300, 200, 100]
```

### sort
```python
# 리스트 정렬 (내부 요소의 데이터 타입이 같아야함.)
a = [300, 200, 800, 400, 500, 100]
a.sort()  # [100, 200, 300, 400, 500, 800]

# 정렬 불가능!
c = ['a', 100, 1, 5, 'c', 'b', 'l', 'o']
c.sort()  #TypeError '<' not supported between instances of 'int' and 'str'

```

### count
```python

```
### index
### clear


