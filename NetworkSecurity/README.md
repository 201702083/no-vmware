## 칼리 리눅스 실습 환경 구성입니다.

### 네트워크
- 호스트 OS와 Bridge 연결
- Gateway 10.0.2.1
- Subnet 24
  - Attacker : 10.0.2.14
  - Victim   : 10.0.2.15

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
