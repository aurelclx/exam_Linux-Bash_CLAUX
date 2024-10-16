#!/bin/bash

#wget https://dst-de.s3.eu-west-3.amazonaws.com/bash_fr/people.json

echo "1. Affichez le nombre d'attributs par document ainsi que l'attribut name. Combien y a-t-il d'attribut par document ? "
# N'affichez que les 12 premières lignes avec la commande head (notebook 2).
echo -n "commande : " && echo "cat people.json | jq .[:12]  |jq .[] | jq '{name, count : length }'"

echo -n "Réponse : le nombre d'attribut dans le document est de " && echo `cat people.json | jq .[:12]  |jq .[0] | jq '{name, count : length }'| jq '.count' ` 
echo `cat people.json | jq .[:12]  |jq .[] | jq '{name, count : length }'`
echo -e "\n---------------------------------\n"


