#!/bin/sh

texprojectfile=rootkit-rfc-part2.utf8.tex
lastbuilddate=`ls rootkit-rfc-part2.????????.??:??:??.dvi 2>/dev/null| awk -F'.' '{print $2"."$3}'`
currentbuilddate=`date +%Y%m%d.%T`
if [ ! -z $lastbuilddate ]; then
 mv rootkit-rfc-part2.$lastbuilddate.dvi rootkit-rfc-part2.$lastbuilddate.dvi.backup
fi
rm -vf *.log
rm -vf *.lof
rm -vf *.aux
rm -vf *.dvi
rm -vf *.lot
rm -vf *.toc

latex $texprojectfile
echo ***************************************************************
echo *********     latex 1st run done.      ************************
echo ***************************************************************

latex $texprojectfile
echo ***************************************************************
echo *********     latex 2nd run done.      ************************
echo ***************************************************************

makeindex `basename $texprojectfile .tex`.idx
echo ***************************************************************
echo *********         makeindex done.      ************************
echo ***************************************************************

latex $texprojectfile
echo ***************************************************************
echo *********    latex 3d run done.        ************************
echo *********    dvi should be uptodate.   ************************
echo ***************************************************************
mv rootkit-rfc-part2.utf8.dvi rootkit-rfc-part2.$currentbuilddate.dvi
ln -s rootkit-rfc-part2.$currentbuilddate.dvi rootkit-rfc-part2.current.dvi
