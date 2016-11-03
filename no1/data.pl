#!/usr/bin/perl
my $filename = "a.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";

while (my $row = <$fh>) {
        $row=~s/^.*\">//;
        $row=~s/<\/a>\",\"/;/;
        $row=~s/\",\"/;/g;
        $row=~s/\",/;/g;
        $row=~s/],//;
        $row=~s/]//;
        $row=~s/],//;
        $row=~s/{v: //;
        $row=~s/, f.*{v: /;/;
        $row=~s/,.*},/;/;
        print "$row";
}

