# dockerizedproxy

1.- Decarregar i aixecar el proxy

   git clone https://github.com/theskyinflames/dockerizedproxy.git
   cd dockerizedproxy
   make build
   make start

2.- Preparar conf pel contenidor Hotelbeds

   docker inspect dockerizedproxy_1 -> p.e 172.27.0.2

    etcdctl set /mast/service/hotelbeds/URL_DISPO 	http://172.27.0.2:4002/publisher/xmlservice.srv
    etcdctl set /mast/service/hotelbeds/URL_PRE_RESERVA 	http://172.27.0.2:4002/publisher/xmlservice.srv
    etcdctl set /mast/service/hotelbeds/URL_CONFIRM 	http://172.27.0.2:4002/publisher/xmlservice.srv
    etcdctl set /mast/service/hotelbeds/URL_CANCEL 	http://172.27.0.2:4002/publisher/xmlservice.srv

3.- Aixecar el contenidor Hotelbeds

4.- Afegir el contenidor Hotelbeds a la xarxa del conetenidor del proxy

   docker network connect dockerizedproxy_default hotelbeds
