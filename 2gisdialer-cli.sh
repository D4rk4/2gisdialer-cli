#!/bin/bash
read -p "Телефон: " phone
curl -s "http://apps.2gis.ru/phone/$phone"|grep "var data"|sed s/,\"/\\n/g|sed 's/\        var data = {"formattedPhone"/Номер/'|grep Номер
curl -s "http://apps.2gis.ru/phone/$phone"|grep "var data"|sed s/,\"/\\n/g|sed 's/region"/Регион/'|grep Регион
curl -s "http://apps.2gis.ru/phone/$phone"|grep "var data"|sed s/,\"/\\n/g|sed 's/company"/Компания/'|grep Компания
curl -s "http://apps.2gis.ru/phone/$phone"|grep "var data"|sed s/,\"/\\n/g|sed 's/blockedInfo"/Жалобы/'|grep Жалобы
curl -s "http://apps.2gis.ru/phone/79227156410"|grep "Ничего не нашлось"|sed 's/<title>//'|sed 's/<\/title>//'|sed 's/\        //'




