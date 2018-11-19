#! /bin/bash
FILE="string.txt"

cat  << EOF > $FILE 
he beat his his competitor, it is a feat
he beat a lot of competitors, but another man beat him.
the sun gives me heat, we also must face to the danger
of death from the sun
EOF

EAT="eat\>"
grep --color $EAT $FILE
echo ""
grep --color "${EAT}.*${EAT}" $FILE

