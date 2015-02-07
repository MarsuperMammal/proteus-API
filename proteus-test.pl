#!/usr/bin/perl
# connect to Proteus
# # use "enableSSL" flag if using SSL
use API;
use SOAP::Lite;
use LWP::Simple qw(get);
use Data::Dumper;
$ENV{HTTPS_CA_FILE} = "/usr/share/centrifydc/apache/certs/ca-certs.crt";
$service = Service->connect("address" => '135.107.21.203', "enableSSL" => 'true' );
$fqdn = `facter fqdn`;
@aliases = split(/,/, `facter alias`);
$ipaddr = `facter ipaddress`;
chomp ($fqdn, $ipaddr, @aliases);

## log in and establish a session
$service->login(
SOAP::Data->name( 'username' )->value( 'te0s0067' )->type('string')->attr({xmlns => ''}),
SOAP::Data->name( 'password' )->value( '/Thgq0*0wa' )->type('string')->attr({xmlns => ''}));

@host_record = $service->getHostRecordsByHint(SOAP::Data->type( 'int' )->name( 'start' )->value( 0 )->attr({xmlns => ''}),
SOAP::Data->type( 'int' )->name( 'count' )->value( 1 )->attr({xmlns => ''}),
SOAP::Data->type( 'string' )->name( 'options' )->value( "hint=$fqdn" )->attr({xmlns => ''}))->result;
$host_id=$host_record[0]{item}{id};
if(defined($host_id)){
    @linkedRecords = $service->getLinkedEntities(SOAP::Data->type( 'long' )->name( 'entityId' )->value( $host_id )->attr({xmlns => ''}),
    SOAP::Data->type( 'string' )->name( 'type' )->value( ObjectTypes::RecordWithLink )->attr({xmlns => ''}),
    SOAP::Data->type( 'int' )->name( 'start' )->value( 0 )->attr({xmlns => ''}),
    SOAP::Data->type( 'int' )->name( 'count' )->value( 5 )->attr({xmlns => ''}))->valueof( '//getLinkedEntitiesResponse/return/item' );
    print "dump of linkedRecords:\n", Dumper(@linkedRecords), "\n";
$n = 0;
while (defined($linkedRecords[$n]{name})) {
  $links=$linkedRecords[$n]{name};
  if($links =~ /^(.*)\d{3}$/) {
  $seen{$1}++; 
  }
  $n=$n+1;
}
}
print "hash of names:\n", Dumper(\%seen);
