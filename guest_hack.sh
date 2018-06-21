#!/usr/bin/expect

set username [lindex $argv 0];
set host [lindex $argv 1];
set password [lindex $argv 2];

spawn ssh -oStrictHostKeyChecking=no $username@$host
expect "*assword: "
send "$password\r"
sleep 1
expect "*:~] "
send "esxcli system settings advanced set -o /Net/GuestIPHack -i 1\r"
expect "*:~] "
exit
