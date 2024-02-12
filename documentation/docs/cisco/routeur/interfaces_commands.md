# Cisco - Interfaces

- L'ensemble des commandes doivent être écritent en mode **configuration** !

## Activer une interface
- Commande normale :
```
no shutdown
```
- Commande raccourci :
```
no sh
```
- Exemple :
```
conf t
    int e0/0
        no sh
```

## Configurer une adresse IP
- Commande normale :
```
ip address 10.0.0.1 255.255.255.0
```
- Commande raccourci :
```
ip add 10.0.0.1 255.255.255.0
```
- Exemple :
```
conf t
    int e0/0
        ip add 10.0.0.1 255.255.255.0
        no sh
```

- **A noter : ***Chaque nouvelle adresse IP écrase l'adresse précédente*** **

## Supprimer une adresse IP d'une interface
- Commande normale :
```
no ip address
```
- Commande raccourci :
```
no ip add
```
- Exemple :
```
conf t
    int e0/0
        no ip add
```

## Commandes de débogage
- Afficher le status des interfaces ainsi que leur adresse IP.
- Commande normale
```
show ip interface brief
```
- Commande raccourci
```
sh ip int b
```

