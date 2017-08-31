# cyachub-1.0(Beta)

We have 3 sets of diretories here. That is asterisk, agi-bin and db. What is inside each directory? Let me explain below.

Dir asterisk -  Asterisk main configuration files are in /etc/asterisk/ directory. So all the modified .conf files for chyachub are in here. Note that we use asterisk version 11 which is default version for Debian 8.5.

Dir agi-bin - Asterisk agi-bin location is defined at /etc/asterisk/asterisk.conf file. We use /usr/share/asterisk/agi-bin/ for cyachub.

Dir db - During our development we may have to alter our table for new requirements. So lets keep the letast mysqldump of table stucture here. Sample data if required.
