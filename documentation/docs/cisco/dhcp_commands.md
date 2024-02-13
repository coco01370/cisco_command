# Cisco - DHCP

## Activer la fonction DHCP

## Exclure des adresses IP
- Commande normale :
```
ip dhcp excluded-address ... ...
```
- Exemple :
```
ip dhcp excluded-address 192.168.10.1 192.168.10.5
```

## Commande de débogage
### Serveur
```
debug ip dhcp server packet
```
### Client
```
debug dhcp
```