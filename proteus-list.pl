#!/usr/bin/perl
#
# connect to Proteus
# use "enableSSL" flag if using SSL
use API;
use SOAP::Lite;

$ENV{PERL_LWP_SSL_VERIFY_HOSTNAME}=0;
my $cfg_proteus_api_user = "TE0S0067";
my $cfg_proteus_api_password = "/Thgq0*0wa";

$service = Service->
  connect("address" => '135.107.21.203', "enableSSL" => 'true' );

## log in and establish a session
$service->login(
  SOAP::Data->
    name('username')->
    value($cfg_proteus_api_user)->
    type('string')->
    attr({xmlns => ''}),

  SOAP::Data->
    name('password')->
    value($cfg_proteus_api_password)->
    type('string')->
    attr({xmlns => ''})
  );

$service->getAliasesByHint(
  SOAP::Data->
    type( 'int' )->
    name( 'start' )->
    value( '0' )->
    attr({xmlns => ''}),

  SOAP::Data->
    type( 'int' )->
    name( 'count' )->
    value( '10')->
    attr({xmlns => ''}),

  SOAP::Data->
    type( 'string' )->
    name( 'options' )->
    value( "10.125.130.67" )->
    attr({xmlns => ''})
  );

$service->getHostRecordsByHint(
  SOAP::Data->
    type( 'int' )->
    name( 'start' )->
    value( '0' )->
    attr({xmlns => ''}),

  SOAP::Data->
    type( 'int' )->
    name( 'count' )->
    value( '10')->
    attr({xmlns => ''}),

  SOAP::Data->
    type( 'string' )->
    name( 'options' )->
    value( "10.125.130.67" )->
    attr({xmlns => ''})
  )
->result;

