# gestion stockage

Pour commencer j'ai fait un cfdisk /dev/sdb
![partition disk](https://github.com/damdupre/chekpoint/assets/169659054/d16ce238-d0ed-427e-8b1e-dd490c0606de)    


j'ai crée les deux partition.  
avec la commande **mkfs .ext4 -L DATA /dev/sdb1** j'ai formater la premiere partition en ext4.
![format ext4 data](https://github.com/damdupre/chekpoint/assets/169659054/5a548244-d249-40d9-a464-5b0179c0434f)
Avec la commande **mkswap /dev/sdb2** j'ai formater la seconde en swap puis la commande **swapon /dev/sdb2** pour activer la particion.  

J'ai editer le fichier /etc/fstab pour monter automatiquement DATA dans /mnt.  
![montage auto DATA ](https://github.com/damdupre/chekpoint/assets/169659054/14d00cb5-7b71-4064-88f4-e5fa0bede046)  
