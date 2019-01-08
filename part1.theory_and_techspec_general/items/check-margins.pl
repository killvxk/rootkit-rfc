#!/usr/bin/perl -w
#
# Обсчитывает количество скобок в файле .
#
use strict;
my $left_fig=0;
my $right_fig=0;
my $right_norm=0;
my $left_norm=0;
my $line=0;
my $retc=0;

while(<>)
{ $line++;
  while(/\{/g){++$left_fig;}
  while(/\}/g){++$right_fig;}
  while(/\)/g){++$right_norm;}
  while(/\(/g){++$left_norm;}
# 2do: fix this crap
#  print stderr {"line $line:\ncounted margins:\n\{\t\t$left_fig\n\}\t\t$right_fig\n\(\t\t$left_norm\n\)\t\t$right_norm\n"};
}

if ( $left_norm != $right_norm ) {print "Non matching number for \"(\" and \")\" \n"; $retc=1;} 
if ( $left_fig != $right_fig ) {print "NON MATCHING NUMBER FOR \"{\" and \"}\" \n"; $retc=2;} 
print STDERR "counted margins:\n\{\t\t$left_fig\n\}\t\t$right_fig\n\(\t\t$left_norm\n\)\t\t$right_norm\n";

print STDERR "You may run this as '$0 2>/dev/null' to see only summary.\n";

# should return 2 if {} mismatch, 1 if () mismatch, 0 if all OK.
exit $retc 
