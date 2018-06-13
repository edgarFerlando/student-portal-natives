#! /bin/bash

Unix=('Debian' 'dRed hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${Unix[@]/*[Dd]*/}
