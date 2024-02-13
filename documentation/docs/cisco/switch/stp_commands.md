# Cisco - STP

## Coûts de chaque liaison
Bande passante | Coûts
 --- | ---
10 Mb/s | 100 
100 Mb/s | 19
1 Gb/s | 4
10 Gb/s | 2
100 Gb/s | 1

## Afficher les informations du STP sur un VLAN
- Commande :
```
show spanning-tree vlan ...
```
- Exemple :
```
sh spanning-tree vlan 1
```

## Activer le "portfast"
- A activer lorsque c'est un PC ou un serveur connecté sur l'interface du switch.

- Commande :
```
spanning-tree portfast
```
- Exemple :
```
conf t
    int e0/0
        spanning-tree portfast
```

## Mettre en place le "bpduguard"
- Désactive la réception d'un BPDU.

- Commande :
```
spanning-tree bpduguard enable
```
- Exemple :
```
conf t
    int e0/0
        spanning-tree portfast
        spanning-tree bpduguard enable
```