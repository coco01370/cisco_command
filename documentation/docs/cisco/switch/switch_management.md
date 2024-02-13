# Cisco - Switch management

## Définir une passerelle par défaut
- Commande :
```
ip default-gateway ...
```
- Exemple :
```
conf t
    ip default-gateway 10.0.0.254
```

## Définir une adresse IP sur l'interface d'un VLAN
- Commande normale :
```
interface vlan ...
    ip address ... ...
```
- Commande raccourci :
```
int vlan ...
    encapsulation dot1q ...
    ip add ... ...
```
- Exemple :
```
conf t
    int vlan 1
        ip add 10.0.0.1 255.255.255.0
```