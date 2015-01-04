#!/usr/bin/perl
# connect to Proteus
# # use "enableSSL" flag if using SSL
use API;
use SOAP::Lite;
use LWP::Simple qw(get);
$ENV{HTTPS_CA_FILE} = "/usr/share/centrifydc/apache/certs/ca-certs.crt";
$service = Service->connect("address" => '135.107.21.203', "enableSSL" => 'true' );
$fqdn = `facter fqdn`;
$ipaddr = `facter ipaddress`;
chomp ($fqdn, $ipaddr);

## log in and establish a session
$service->login(
SOAP::Data->name( 'username' )->value( 'te0s0067' )->type('string')->attr({xmlns => ''}),
SOAP::Data->name( 'password' )->value( '/Thgq0*0wa' )->type('string')->attr({xmlns => ''}));

$service->addHostRecord(SOAP::Data->type( 'long' )->name( 'viewId' )->value( '473968' )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'absoluteName' )->value( $fqdn )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'addresses' )->value( $ipaddr )->attr({xmlns => ''}),
SOAP::Data->type( 'long' )->name( 'ttl' )->value( '180' )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'properties' )->value("")->attr({xmlns => ''}))->result;

  $service->addAliasRecord(SOAP::Data->type( 'long' )->name( 'viewId' )->value( '473968' )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'absoluteName' )->value( 'bluecat-test1.ohs.tycoelectronics.com' )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'linkedRecordName' )->value( $fqdn )->attr({xmlns => ''}),
SOAP::Data->type( 'long' )->name( 'ttl' )->value( '180' )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'properties' )->value( "" )->attr({xmlns => ''}))->result;
