use strict;
use warnings;
use FindBin qw($Bin);
use File::Slurp qw(slurp);
use Test::More tests => 2;
use Test::Exception;

unshift(@ARGV, "$Bin/docs-markdown/Markdown_Documentation_-_Syntax.text");
my $expected = slurp("$Bin/docs-markdown/Markdown_Documentation_-_Syntax.html");

lives_ok {
    require "$Bin/../script/Markdown.pl";
} 'require Markdown.pl works';
my $out = main();
is($out, $expected, 'Markdown.pl does the right thing with the syntax guide');
