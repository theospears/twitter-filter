#!/bin/sh
OPENSSL=openssl
CERT_DIR=cert

$OPENSSL genrsa -des3 -passout pass:password -out $CERT_DIR/server.key.secure 1024
$OPENSSL req -new -passin pass:password -key $CERT_DIR/server.key.secure -config $CERT_DIR/cert.conf -out $CERT_DIR/server.csr
$OPENSSL x509 -req -days 365 -passin pass:password -in $CERT_DIR/server.csr -signkey $CERT_DIR/server.key.secure -out $CERT_DIR/server.crt

$OPENSSL rsa -in $CERT_DIR/server.key.secure -passin pass:password -out $CERT_DIR/server.key
rm $CERT_DIR/server.key.secure $CERT_DIR/server.csr
