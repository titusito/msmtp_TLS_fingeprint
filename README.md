# msmtp_TLS_fingeprint
simple script to update the tls fingerprint on you msmstp setup so you can forget about it.

Call this from crontab, it has been tested with crontab -e setup 

Put the file in you favorite executable directory and call it as often as you think is is practical. 

This Script creates a tmp file with the fingerpeint for tracking changes, you can also add a crontab rule to erase the file as needed.
