#!/bin/bash
# Encryption/Decryption Shell Script by Rat_Dot_Exe

if [ "$1" = "e" ]; then
	openssl aes-256-cbc -in $2 -out $3 -pass file:$4
	echo "File Encrypted"
	exit 0
fi

if [ "$1" = "d" ]; then
	openssl aes-256-cbc -d -in $2 -out $3 -pass file:$4
	echo "File Decrypted"
	exit 0
else
	echo "./crypt.sh <e/d> <file> <result_file> <key>"
fi
