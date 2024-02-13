# Cisco - VLAN

## Afficher les VLANs présent sur un switch
- Commande normale :
```
show vlan brief
```
- Commande raccourci :
```
sh vlan b
```

## Créer un vlan et lui affecter un nom
- Commande :
```
vlan ...
    name ...
```
- Exemple :
```
conf t
    vlan 100
        name TOTO
        ex
    vlan 200
        name TATA
```

## Affecter des interfaces à un vlan en mode "access"
- Commande :
```
interface ...
    switchport mode access
    switchport access vlan ...
```
- Exemple :
```
conf t
    int e0/0
        switchport mode access
        switchport access vlan 100
```

## Mettre une interface en mode "trunk"
- Commande :
```
interface ...
    switchport mode trunk
```
- Exemple :
```
conf t
    int e0/0
        switchport mode trunk
```
- A noter : **Configuration à faire sur les deux switch**

## Enlever le mode "trunk" d'une interface
- Commande :
```
interface ...
    switchport mode access
    switchport access vlan ...
```
- Exemple :
```
conf t
    int e0/0
        switchport mode access
        switchport access vlan 100
```

## Vérifier l'activation du mode "trunk"
- Commande normale :
```
show interfaces trunk
```
- Commande raccourci :
```
sh int trunk
```

## Limiter les VLANs a autoriser
### Liste exhaustive des VLANs autorisés
- Commande :
```
interface ...
    switchport trunk allowed vlan ...
```
- Exemple :
```
conf t
    int e0/0
        switchport trunk allowed vlan 1,100-200
```

### Ajouter un VLAN à une liste déjà présente
- Commande :
```
interface ...
    switchport trunk allowed vlan add ...
```
- Exemple :
```
conf t
    int e0/0
        switchport trunk allowed vlan add 300
```

### Retirer un VLAN à une liste déjà présente
- Commande :
```
interface ...
    switchport trunk allowed vlan remove ...
```
- Exemple :
```
conf t
    int e0/0
        switchport trunk allowed vlan remove 100
```

### Autoriser tous les VLANs sauf un seul
- Commande :
```
interface ...
    switchport trunk allowed vlan except ...
```
- Exemple :
```
conf t
    int e0/0
        switchport trunk allowed vlan except 400
```

### Autoriser tous les VLANs
- Commande :
```
interface ...
    switchport trunk allowed vlan all
```
- Exemple :
```
conf t
    int e0/0
        switchport trunk allowed vlan all
```