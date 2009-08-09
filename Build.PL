use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'SMS::Server::Tools',
    license             => 'perl',
    dist_author         => 'Thomas Lenz <tholen@cpan.org>',
    dist_version_from   => 'lib/SMS/Server/Tools.pm',
    build_requires => {
        'Test::More'      => 0,
        'Class::Accessor' => 0.31,
    },
    add_to_cleanup      => [ 'SMS-Server-Tools-*', '*~', '.*~' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
