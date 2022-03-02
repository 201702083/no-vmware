# !bin/bash

if [ "$1" == "host" ] ; then

  docker compose up -d --build

  echo "Connected to seed ubuntu : host"

  docker exec -it host-10.0.2.5 bash

elif [ "$1" == "attacker" ] ; then

  docker compose up -d --build

  echo "Connected to seed ubuntu : attacker"

  docker exec -it attacker bash

else

  echo "Invalid command $1"

fi

