#!/bin/bash
# shellcheck disable=SC2154
wget -q http://www.kvarnen.com/files/dagens_kvarn_v_49_2015.pdf -O- | \
    pdftotext - - | \
    grep -A 3 "${today}" | \
    egrep -v "^$|${today}"
