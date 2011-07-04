use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    abstract            => 'Perl interface to Notify My Android web API',
    module_name         => 'WebService::NotifyMyAndroid',
    license             => 'perl',
    dist_author         => 'Steve Huff <shuff@cpan.org>',
    dist_version_from   => 'lib/WebService/NotifyMyAndroid.pm',
    requires => {
        'Carp'                  => 0,
        'Params::Validate'      => 0,
        'Readonly'              => 0,
        'Regexp::Common'        => 0,
        'WebService::Simple'    => 0,
        'XML::Simple'           => 0,
        'version'               => 0,
    },
    configure_requires => {
        'Test::More'            => 0,
        'Test::Perl::Critic'    => 0,
        'Test::Pod'             => 1.14,
        'Test::Pod::Coverage'   => 1.04,
    },
    add_to_cleanup      => [ 'WebService-NotifyMyAndroid-*' ],
    create_makefile_pl  => 'traditional',
);

$builder->create_build_script();
