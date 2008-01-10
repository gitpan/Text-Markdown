use strict;
use Module::Build;

my $build = Module::Build->new(
    create_makefile_pl  => 'passthrough',
    license             => 'perl',
    module_name         => 'Text::Markdown',
    create_readme       => 1,
    test_files          => [ glob('t/*.t') ],
    requires            => {
        Encode => 0,
    },
    dist_abstract       => q{CPAN version of John Gruber's Markdown text to HTML filter},
    dist_author         => 'Tomas Doran <bobtfish@bobtfish.net>'
);
$build->create_build_script;
