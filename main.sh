#!/bin/bash

echo
echo
cat ./assets/logo.txt 
echo
echo

echo "[#] Choose what to do next!"
echo "[0] Generation Keys."
echo "[1] Encryption."
echo "[2] Decryption."
read -r mode

case $mode in
  0)
  	ssh-keygen -t rsa -b 4096 -m PEM -f ./keys/crypto
  	ssh-keygen -f ./keys/crypto.pub -e -m PKCS8 > ./keys/crypto.public
  	rm ./keys/crypto.pub
  	mv ./keys/crypto ./keys/crypto.private
  	;;
  1)
    echo "Message :"
    read -r message
    echo "Create file (exmaple : message.txt) :"
    read -r opf 
    openssl pkeyutl -encrypt -pubin -inkey ./keys/crypto.public -in <(echo "$message") -out "$opf"
    echo "Message successful encrypted in $opf!"
    ;;
  2)
    echo "Encrypted file :"
    read -r input_file
    echo "Create file (exmaple : decrypted.txt) :"
    read -r output_file
    openssl pkeyutl -decrypt -inkey ./keys/crypto.private -in "$input_file" -out "$output_file"
    echo "Message successful decrypted in $output_file."
    ;;
  *)
    echo "This option does not exist!"
    exit 1
    ;;
esac
