# Cisco - Ping

## Pinger une adresse IP
- Commande normale :
```
ping ....
```
- Exemple :
```
ping 10.0.0.1
```

## Pinger une adresse IP en précisant une adresse source
- Commande normale :
```
ping ... source ...
```
- Exemple :
```
ping 4.0.0.4 source 10.0.0.1
```

## Utiliser le ping étendue
- Commande normale :
```
ping
```
- Exemple :
```
ping
Protocol [ip]:
Target IP address: 4.0.0.4
Repeat count [5]:
Datagram size [100]:
Timeout in seconds [2]:
Extended commands [n]: y
Source address or interface:
Type of service [0]:
Set DF bit in IP header? [no]:
Validate reply data?[no]:
Data pattern [OxABCD]:
Loose, Strict, Record, Timestamp, Verbose[none]: R
Number of hops [9]:
Loose, Strict, Record, Timestamp, Verbose[RV]:
Sweep range of sizes [n]:
```