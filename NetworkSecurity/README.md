## 칼리 리눅스 실습 환경 구성입니다.

### 실행
```
$ docker compose up --build -d 
// 아직은 host인 kali-victim만 사용하고 있는 상태
```
컨테이너를 실행하고
```
$ sh /kali/victim/setup.sh
```
DVWA, PHP, MYSQL, APACHE 세팅을 합니다.

FIN
