#!/bin/sh
cd /Users/cdoolittle/commerce
mvn clean install -U
nuhup /Users/cdoolittle/.dotfiles/bin/admin-start.sh
/Users/cdoolittle/.dotfiles/bin/site-start.sh