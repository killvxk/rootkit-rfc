#!/usr/bin/perl
while (<>) {
/^\S+\.(\d+\.\d+:\d+:\d+)\.dvi$/;
print "$1\n";
}
