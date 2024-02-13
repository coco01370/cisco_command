# Cisco - Cisco Discovery Protocol (CDP)

## Protocol CDP
### Objectifs
- Découvrir des informations sur mes voisins
- Envoyer des informations à mes voisins

### Fonctionnement
- Le routeur envoie ses informations toutes les **60 secondes**.
- Trames en **multicast** à l'adresse **0100.0ccc.cccc**.
- Informations envoyées quelque soit le type d'encapsulation configuré sur l'interface.

## Activer CDP en global
- Commande normale :
```
cdp run
```
- Exemple :
```
conf t
    cdp run
```

## Activer CDP sur une interface
- Commande normale :
```
cdp enable
```
- Exemple :
```
conf t
    int e0/0
        cdp enable
```

## Désactiver CDP en global
- Commande normale :
```
no cdp run
```
- Exemple :
```
conf t
    no cdp run
```

## Désactiver CDP sur une interface
- Commande normale :
```
no cdp enable
```
- Exemple :
```
conf t
    int e0/0
        no cdp enable
```

## Comandes pour afficher la configuration
### show cdp
- Commande normale :
```
show cdp
```
- Commande raccourci :
```
sh cdp
```

### show cdp neighbors
- Commande normale :
```
show cdp neighbors
```
- Commande raccourci :
```
sh cdp nei
```

### show cdp neighbors detail
- Commande normale :
```
show cdp neighbors detail
```
- Commande raccourci :
```
sh cdp nei detail
```