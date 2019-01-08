#!/bin/sh
pdfname=rootkit-rfc-part1.`date +%Y%m%d.%T`.pdf
dvipdf rootkit-rfc-current.dvi $pdfname
