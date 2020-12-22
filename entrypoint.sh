#!/bin/sh
FILES=/zims/*.zim
LIBRARY_PATH=/library.xml

for f in $FILES
do
  echo $f
  /kiwix/kiwix-manage $LIBRARY_PATH add $f
done

/kiwix/kiwix-serve --port 8080 --library /library.xml