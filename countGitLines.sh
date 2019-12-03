#!/bin/bash

echo "* * * * * * * * * * * * * * * * * * * * * * *"
echo "* + + + + + + + + + + + + + + + + + + + + + *"
echo "* +- - - - - - - - - - - - - - - - - - - -+ *"
echo "* +| P P P P    M M     M M    G G G G   |+ *"
echo "* +| P      P   M  M   M  M   G       G  |+ *"
echo "* +| P P P p    M   M M   M  G           |+ *"
echo "* +| P          M    M    M  G    G G G  |+ *"
echo "* +| P          M         M   G       G  |+ *"
echo "* +| P        ® M         M ®  G G G G   |+ *"
echo "* +- - - - - - - - - - - - - - - - - - - -+ *"
echo "* +           .----.   @   @             |+ *"
echo "* +          / .-\"-.\`.  \\v/              |+ *"
echo "* +          | | '\\ \\ \\_/ )              |+ *"
echo "* +        ,-\\ \`-.' /.'  /               |+ *"
echo "* +       '---\`----'----'                |+ *"
echo "* +- - - - - - - - - - - - - - - - - - - -+ *"
echo "* + + + + + + + + + + + + + + + + + + + + + *"
echo "* +- - - - - - - - - - - - - - - - - - - -+ *"
echo "* +|        Michael Galliakis 2019       |+ *"
echo "* +|           Program m_g ; -)          |+ *"
echo "* +|       michaelgalliakis@yahoo.gr     |+ *"
echo "* +| The script was created on 24/9/2019 |+ *"
echo "* +| https://github.com/michaelgalliakis |+ *"
echo "* +- - - - - - - - - - - - - - - - - - - -+ *"
echo "* + + + + + + + + + + + + + + + + + + + + + *"
echo "* * * * * * * * * * * * * * * * * * * * * * *"

echo "Lines of code from each contributor of this git project"
SAVEIFS=$IFS   # Save current IFS
IFS=$'\n'   
myarr=($(git shortlog -s -n --all --no-merges | awk '{
    apot = $2;
    for (i = 3; i <= NF; i++) {
       apot = "\""apot" "$i"\""
    }
    print apot;   
}'))
IFS=$SAVEIFS 

for i in "${myarr[@]}"
do :
  eval git log --author=$i --pretty=tformat: --numstat | grep -v '^-' | awk '{ add+=$1; remove+=$2 } END { printf "Add: " add ", Remove: " remove ", Diff: " (add-remove) }'
  echo  " => " $i
done

#* * * * * * * * * * * * * * * * * * * * * * *
#* + + + + + + + + + + + + + + + + + + + + + *
#* +- - - - - - - - - - - - - - - - - - - -+ *
#* +| P P P P    M M     M M    G G G G   |+ *
#* +| P      P   M  M   M  M   G       G  |+ *
#* +| P P P p    M   M M   M  G           |+ *
#* +| P          M    M    M  G    G G G  |+ *
#* +| P          M         M   G       G  |+ *
#* +| P        ® M         M ®  G G G G   |+ *
#* +- - - - - - - - - - - - - - - - - - - -+ *
#* +           .----.   @   @             |+ *
#* +          / .-"-.`.  \v/              |+ *
#* +          | | '\ \ \_/ )              |+ *
#* +        ,-\ `-.' /.'  /               |+ *
#* +       '---`----'----'                |+ *
#* +- - - - - - - - - - - - - - - - - - - -+ *
#* + + + + + + + + + + + + + + + + + + + + + *
#* +- - - - - - - - - - - - - - - - - - - -+ *
#* +|        Michael Galliakis 2019       |+ *
#* +|           Program m_g ; -)          |+ *
#* +|       michaelgalliakis@yahoo.gr     |+ *
#* +| The script was created on 24/9/2019 |+ *
#* +| https://github.com/michaelgalliakis |+ *
#* +- - - - - - - - - - - - - - - - - - - -+ *
#* + + + + + + + + + + + + + + + + + + + + + *
#* * * * * * * * * * * * * * * * * * * * * * *
