#!/bin/sh
fingerprint=$( msmtp --serverinfo --tls --tls-certcheck=off --tls-fingerprint= | grep SHA256: | sed 's/SHA256://'| sed 's/[[:blank:]]//g' )
echo "$fingerprint" >> /tmp/fingerprint
sed -i -r "s/^(tls_fingerprint).*/\1 $fingerprint/" /etc/msmtprc
