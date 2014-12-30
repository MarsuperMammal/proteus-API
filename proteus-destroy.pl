#!/usr/bin/perl
#
# connect to Proteus
# use "enableSSL" flag if using SSL
use API;
use SOAP::Lite;

$ENV{PERL_LWP_SSL_VERIFY_HOSTNAME}=0;
my $cfg_proteus_api_user = "TE0S0067";
my $cfg_proteus_api_password = "";

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

$service->void delete(
  SOAP::Data->
    type( 'long' )->
    name( 'ObjectId' )->
    value( '' )->
    attr({xmlns => ''})
  )

