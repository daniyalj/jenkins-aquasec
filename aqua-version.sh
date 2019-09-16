#!/bin/bash
sed -i -e "s/aqua-security-scanner-version/$SCANNER_VERSION/g" /plugins.txt
sed -i -e "s/aqua-microscanner-version/$MICROSCANNER_VERSION/g" /plugins.txt
