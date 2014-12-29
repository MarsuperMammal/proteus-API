#!/usr/bin/perl
#
# connect to Proteus
# use "enableSSL" flag if using SSL
use API;
use SOAP::Lite;
$ENV{PERL_LWP_SSL_VERIFY_HOSTNAME}=0;
my $cfg_proteus_api_user = "te206676";
my $cfg_proteus_api_password = "FcSPN1s7h";
$service = Service->connect("address" => '135.107.21.203', "enableSSL" => 'true' );

## log in and establish a session
$service->login(
SOAP::Data->name('username')->value($cfg_proteus_api_user)->type('string')->attr({xmlns => ''}),
SOAP::Data->name('password')->value($cfg_proteus_api_password)->type('string')->attr({xmlns => ''}));

$service->addHostRecord(SOAP::Data->type( 'long' )->name( 'viewId' )->value( '473949' )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'absoluteName' )->value( 'i-466035b8.ohs.tycoelectronics.com' )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'addresses' )->value( '10.125.196.131')->attr({xmlns => ''}),
SOAP::Data->type( 'long' )->name( 'ttl' )->value( '180' )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'properties' )->value("")->attr({xmlns => ''}))->result;
