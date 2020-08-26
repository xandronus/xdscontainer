#!/bin/bash
echo "basicConstraints=CA:true" > options.txt
echo "subjectAltName=DNS:localhost,IP:127.0.0.1" >> options.txt
openssl genrsa -out key.pem 2048
openssl req -subj '/CN=localhost' -new -days 3650 -key key.pem -out cert.csr
openssl x509 -req -days 3650 -in cert.csr -signkey key.pem -extfile ./options.txt -out cert.pem
openssl x509 -inform PEM -outform DER -in cert.pem -out cert.der.crt

