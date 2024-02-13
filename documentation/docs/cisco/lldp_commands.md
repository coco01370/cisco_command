# Cisco - LLDP

## Activer LLDP en global
- Commande normale :
```
lldp run
```
- Exemple :
```
conf t
    lldp run
```

## Activer LLDP sur une interface
- Commande normale :
```
lldp enable
lldp transmit
lldp receive
```
- Exemple :
```
conf t
    int e0/0
        lldp enable
        lldp transmit
        lldp receive
```

## Désactiver LLDP en global
- Commande normale :
```
no lldp run
```
- Exemple :
```
conf t
    no lldp run
```

## Désactiver LLDP sur une interface
- Commande normale :
```
no lldp enable
```
- Exemple :
```
conf t
    int e0/0
        no lldp enable
```

## Comandes pour afficher la configuration
### show lldp
- Commande normale :
```
show lldp
```
- Commande raccourci :
```
sh lldp
```

### show lldp neighbors
- Commande normale :
```
show lldp neighbors
```
- Commande raccourci :
```
sh lldp nei
```

### show lldp neighbors detail
- Commande normale :
```
show lldp neighbors detail
```
- Commande raccourci :
```
sh lldp nei detail
```