# Cisco - VLAN natif

## Configurer le VLAN natif
- Commande normale :
```
interface ...
    switchport mode trunk
    switchport trunk native vlan ...
```
- Exemple :
```
conf t
    interface e0/0
        switchport mode trunk
        switchport trunk native vlan 10
```

- A noter : **Les deux switchs doivent utiliser le même VLAN natif sur le lien qui les interconnecte !**