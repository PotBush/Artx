#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#181818/g' \
         -e 's/rgb(100%,100%,100%)/#ffffff/g' \
    -e 's/rgb(50%,0%,0%)/#181818/g' \
     -e 's/rgb(0%,50%,0%)/#00ccff/g' \
 -e 's/rgb(0%,50.196078%,0%)/#00ccff/g' \
     -e 's/rgb(50%,0%,50%)/#181818/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#181818/g' \
     -e 's/rgb(0%,0%,50%)/#ffffff/g' \
	"$@"
