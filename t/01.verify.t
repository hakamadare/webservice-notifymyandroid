use strict;
use warnings;

use Test::More tests => 3;                      # last test to print

BEGIN { use_ok( 'WebService::NMA' ); }

use Data::Dumper;

my $APIKEY = '67f9b6dbd5cc00f245ff677e288f4e3aecc97f49cbf3b2a3';

my $nma = WebService::NMA->new;

my( $verify ) = $nma->verify( apikey => $APIKEY );

ok( $verify->parse_response->{success}->{code} == 200, 'successful verification' );

$verify = $nma->verify( apikey => 'foobarfoobarfoobarfoobarfoobarfoobarfoobarfoobar' );

ok( $verify->parse_response->{error}->{code} == 401, 'rejects invalid key' );

