#!/bin/bash
baseurl='http://apps.2gis.ru/phone/'
seed="${RANDOM}"
tmpfile="/tmp/2gis.$seed"

read -p "Телефон: " phone
wget -qO ${tmpfile} ${baseurl}${phone}
grep "var data" ${tmpfile}|sed s/,\"/\\n/g|sed 's/\        var data = {"formattedPhone"/Номер/'|grep Номер
grep "var data" ${tmpfile}|sed s/,\"/\\n/g|sed 's/region"/Регион/'|grep Регион
grep "var data" ${tmpfile}|sed s/,\"/\\n/g|sed 's/company"/Компания/'|grep Компания
grep "var data" ${tmpfile}|sed s/,\"/\\n/g|sed 's/blockedInfo"/Жалобы/'|grep Жалобы
rm -f ${tmpfile}
