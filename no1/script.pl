my $filename = "a.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";

while (my $row = <$fh>) {
        $row=~s/""//g;
        $row=~s///g;
        $row=~s/\",\"/;/g;
        $row=~s/\",/;/g;
        $row=~s/],//g;
        $row=~s/]//g;
        $row=~s/],//g;
        $row=~s/{v: //g;
        $row=~s/, f.*{v: /;/g;
        $row=~s/,.*},/;/g;
        print "$row";
}

