# !bin/bash

CHECK_OS="`uname -s`" 
if [[ "$CHECK_OS" = "Darwin"* ]]; then
     # Do something under Mac OS X platform
     THIS_OS="MAC"
elif [[ "$CHECK_OS" = "Linux"* ]]; then
     # Do something under GNU/Linux platform     
     THIS_OS="LINUX" 
elif [[ "$CHECK_OS" = "MINGW32"* ]]; then
     # Do something under Windows NT platform     
     THIS_OS="WIN" 
elif [[ "$CHECK_OS" = "MINGW64"* ]]; then 
     # Do something under Windows NT platform
     THIS_OS="WIN" 
elif [[ "$CHECK_OS" = "CYGWIN"* ]]; then
     # Do something under Windows NT platform
     THIS_OS="WIN"     
fi

echo "my os is $THIS_OS"

if [ "$1" == "host" ] ; then

  docker compose build --no-cache && docker compose up -d host

  echo "Connected to seed ubuntu : host"

  docker exec -it host-10.0.2.5 bash

elif [ "$1" == "attacker" ] ; then

  docker compose up -d --build attacker

  echo "Connected to seed ubuntu : attacker"

  docker exec -it attacker bash

else

  echo "Invalid command $1"

fi

