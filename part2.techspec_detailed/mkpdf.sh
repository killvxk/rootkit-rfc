#!/bin/sh
pdfname=rootkit-rfc-part2.`date +%Y%m%d.%T`.pdf
dvipdf rootkit-rfc-part2.current.dvi $pdfname
