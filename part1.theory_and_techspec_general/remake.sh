#!/bin/sh

builddocument=rootkit-rfc-part1
texprojectfile=rootkit-rfc.utf8.tex
lastbuilddate=`ls rootkit-rfc.????????.??:??:??.dvi 2>/dev/null| awk -F'.' '{print $2"."$3}'`
currentbuilddate=`date +%Y%m%d.%T`
if [ ! -z $lastbuilddate ]; then
 mv rootkit-rfc.$lastbuilddate.dvi rootkit-rfc.$lastbuilddate.dvi.backup
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
mv rootkit-rfc.utf8.dvi $builddocument.$currentbuilddate.dvi
ln -s $builddocument.$currentbuilddate.dvi rootkit-rfc-current.dvi
