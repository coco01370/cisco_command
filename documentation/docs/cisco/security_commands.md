# Cisco - Securité

- L'ensemble des commandes doivent être écritent en mode **configuration** !

## Protéger l'accès **administrateur**
### Ancienne commande
- Commande :
```
enable password ...
```
- Exemple :
```
enable password TOTO
```

### Nouvelle commande
- Commande :
```
enable secret ...
```
- Exemple :
```
enable secret TOTO
```

- **A noter : ***Si les deux commandes sont configurées, seulement la nouvelle commande vous sera demandé !*** **

## Activer le chiffrement
```
service password-encryption
```

## Protéger l'accès en mode **console**
```
line console 0
```

### Ne pas exiger de commande
```
no login
```

### Exiger un mot de passe et le configurer
#### Commandes
```
login
```
```
password ...
```

#### Exemples
```
conf t
    line console 0
        login
        password TOTO
```

### Exiger un mot de passe de la BDD locale et le configurer
#### Commandes
```
login local
```
```
username ... password ...
```

#### Exemples
```
conf t
    line console 0
        login local
        ex
    username JULIE password JU99
```

## Protéger l'accès en mode **VTY**
```
line vty 0 4
```

### Autoriser le **Telnet**
#### Commandes
```
transport input telnet
```

#### Exemples
```
conf t
    line vty 0 4
        transport input telnet
```

### Autoriser le **SSH**
#### Commandes
```
transport input ssh
```

#### Exemples
```
conf t
    line vty 0 4
        transport input ssh
```

### Autoriser aucun protocole
#### Commandes
```
transport input none
```

#### Exemples
```
conf t
    line vty 0 4
        transport input none
```

- **A noter : ***Il est possible d'activer le SSH et le Telnet sur un même équipement ! De plus, vous pouvez aussi configurer une connexion par mot de passe comme en mode **console** (Modifier "line console 0" par "line vty 0 4")*** **

## Configurer le **SSH**
- Générer une clé **RSA** :
```
crypto key generate rsa general modulus 2048
```
- Exemple :
```
conf t
    crypto key generate rsa general modulus 2048
    username JULIE password JU99
    line vty 0 4
        login local
        transport input ssh
```