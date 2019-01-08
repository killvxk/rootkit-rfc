return_summary=0
for f in ./items/*.tex; do
 if [ "$1" == "--verbose" ]; then
   cat $f | ./items/check-margins.pl
   retc=$?
   [ "$retc" == "1" ] && echo -e "\tnon fatal margins probmem in $f"
   [ "$retc" == "2" ] && echo -e "\tFATAL MARGINS PROBLEM in $f"
 else 
   cat $f | ./items/check-margins.pl 2>/dev/null
   retc=$?
   [ "$retc" == "1" ] && echo -e "\tnon fatal margins probmem in $f"
   [ "$retc" == "2" ] && echo -e "\tFATAL MARGINS PROBLEM IN $f"
 fi
 [ "$retc" != "0" ] && return_summary=3
done
exit $return_summary
