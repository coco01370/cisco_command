# Cisco - Per VLAN STP

## Diminuer la priorité
- Commande :
```
spanning-tree vlan ... priority ...
```
- Exemple :
```
conf t
    spanning-tree vlan 100 priority 8192
```

- A noter : **La priorité doit être un multiple de 4096 !**