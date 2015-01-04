#!/usr/bin/perl
# connect to Proteus
# # use "enableSSL" flag if using SSL
use API;
use SOAP::Lite;
use LWP::Simple qw(get);
use Data::Dumper;
$ENV{HTTPS_CA_FILE} = "/usr/share/centrifydc/apache/certs/ca-certs.crt";
$service = Service->connect("address" => '135.107.21.203', "enableSSL" => 'true' );
$hostname = `facter hostname`;
$fqdn = `facter fqdn`;
$ipaddr = `facter ipaddress`;
chomp ($fqdn, $ipaddr, $hostname);

## log in and establish a session
$service->login(
SOAP::Data->name( 'username' )->value( 'te0s0067' )->type('string')->attr({xmlns => ''}),
SOAP::Data->name( 'password' )->value( '/Thgq0*0wa' )->type('string')->attr({xmlns => ''}));

@host_record = $service->getHostRecordsByHint(SOAP::Data->type( 'int' )->name( 'start' )->value( 0 )->attr({xmlns => ''}),
SOAP::Data->type( 'int' )->name( 'count' )->value( 1 )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'options' )->value( "hint=$fqdn" )->attr({xmlns => ''}))->result;
print "dump of host_record:\n", Dumper(@host_record),"\n";


@linkedRecords = $service->getLinkedEntities(SOAP::Data->type( 'long' )->name( 'entityId' )->value( $fqdn )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'type' )->value( ObjectTypes::RecordWithLink )->attr({xmlns => ''}),
SOAP::Data->type( 'int' )->name( 'start' )->value( 0 )->attr({xmlns => ''}),
SOAP::Data->type( 'int' )->name( 'count' )->value( 5 )->attr({xmlns => ''}))->valueof( '//getLinkedEntitiesResponse/return/item' );
print "dump of linkedRecords:\n", Dumper(@linkedRecords), "\n";
