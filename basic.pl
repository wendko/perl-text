#!/usr/bin/perl

# This is a single line comment

=begin someComment
this is a block
of
comments!
=cut

print "1) Hello, world!";
print "\n\n---\n";

print "2) Hello,
next line";
print "\n\n---\n";

print '3) Hello, single quotes';
print "\n\n---\n";

# no interpolation with single quotes
$interpolated_text = "interpolated text";
print "4) Hello $interpolated_text";
print "\n\n---\n";

$escaped_text = "\"escaped\" \"text\"";
print "5) Hello $escaped_text";
print "\n\n---\n";


print "6) Multiline text using\n";
print "- simple multiline string,
or
";
$text_constructed_with_identifier = <<"EOF";
- the "here" document. Until it finds the text EOF on a line it will keep on parsing.
The EOF here is ignored because it's not the first on a line.
We can put $interpolated_text here too!
EOF
print "$text_constructed_with_identifier";

print "\n---\n";

# hm % doesn't work!!
$identifier_1 = "\$";
@identifier_2 = "\@";
%identifier_3 = ("value", "\%");
print "7) Can use $identifier_1, @identifier_2 and $identifier_3{'value'} as identifiers"; 
print "\n\n---\n";

print "8) Forced \uuppercase one char, \Uuppercase all\E, \lLOWERCASE one char, \LLOWERCASE ALL\E, \Qbackslash all\E, Use 'E' to end ";
print "\n\n---\n";

print "9) Loosely typed and has data types: scalar (prefix $ - number, string, reference), array (prefix @), hashes (prefix %)";
$var_scalar = "this is a scalar var";
@var_array = ("bubbles","blossom","buttercup");
%var_hash = ("name", "bubbles", "color", "blue");
print "\n";
print "- \$var_scalar: $var_scalar";
print "\n";
print "- \@var_array: @var_array, accessing array at index 0: @var_array[0]";
print "\n";
@copy_of_var_array = @var_array;
$array_size = @var_array;
print "- assigning var is different based on context:\n";
print "  - \@a2 = \@var_array ==> \@a2 = @copy_of_var_array\n";
print "  - \$a3 = \@var_array ==> \@a3 = $array_size";
print "\n";
print "- hash are sorta like objects with key-value pairs.\n";
print "- access the value using syntax '\$hash{'key'}': name: $var_hash{'name'}, color: $var_hash{'color'}";
print "\n\n---\n";

print "10) Scalar operations\n";
$text_1 = "hello";
$text_2 = "hihi";
$num_1 = 2;
$num_2 = 10;

$text_concat = $text_1 + $text_2;
$num_add = $num_1 + $num_2;
$text_num_concat = $text_1 . $num_1;
print "- text concat: $text_concat\n";
print "- num add: $num_add\n";
print "- text num concat: $text_num_concat";
print "\n\n---\n";