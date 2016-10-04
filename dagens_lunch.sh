#!/bin/bash
declare -A days
days[Monday]="Måndag"
days[Tuesday]="Tisdag"
days[Wednesday]="Onsdag"
days[Thursday]="Torsdag"
days[Friday]="Fredag"
export today=${days[$(date +%A)]}

echo "Dagens lunch ${today,,}"
echo ""

for plugin in $(find /opt/plugins/ -name "*.sh"); do
    name="${plugin%.sh}"
    name="${name##*/}"
    echo "${name^}:"
    bash ${plugin}
    echo
done
