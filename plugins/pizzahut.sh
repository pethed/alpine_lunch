#!/bin/bash

# shellcheck disable=SC2154
curl -s http://www.pizzahut.se/sidor/veckans-pizzor-sommarbuffe/ | \
    awk '/<strong>'"${today^^}"'<\/strong>/,/<br><br>/'  | \
    sed -r 's|.*<strong>'"${today^^}"'</strong>(.*?)<br><br></p>.*|\1|;s|<br>|\n|g' | \
    sed -e 's/<[^>]*>//g; s/&[a-z]*;//g' | \
    grep -A4 "${today^^}" | \
    egrep -v "${today^^}"
