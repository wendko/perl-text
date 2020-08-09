# https://perldoc.perl.org/5.32.0/perlopentut.html

my $file_path = "sample_file.txt";
my $encoding = ":encoding(UTF-8)";

open($handle, "< $encoding", $file_path) || die "$0: can't open $filename for reading: $!";

$line = readline($handle);

# transform all lines to uppercase
while ($line) {
    print "\U$line";
    $line = readline($handle);
}
