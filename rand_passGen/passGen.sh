#!/bin/bash

PASS_LEN=12

password=$(< /dev/urandom tr -dc 'A-Za-z0-9!#$%^&*@()_+' | head -c $PASS_LEN)
echo "Generated Password - " $password
