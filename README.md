# For system network security class

> Requirement : docker , docker-compose

## Env
 - 32 bit ubuntu 20.04
 - Network 10.0.2.0/24
   - host 10.0.2.5 
 
 - root pw : root
   - You can change this at Dockerfile line:7 `root:{yourPW}`

## Build
``` 
./build.sh host

or

./build.sh attacker
```

## Reset
```
./reset.sh
```

