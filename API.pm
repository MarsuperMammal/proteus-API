#
# Perl module for Proteus API service
# (c) 2006-2011 BlueCat Networks, Inc
#
# version 0.0.0.0

require Exporter;

use SOAP::Lite + xmlschema=>'2001';
use HTTP::Cookies;

#
#
#
package APIEntity;

	sub new	{

		my( $class ) = shift;
		my( %params ) = @_;

		bless {

			"id" => SOAP::Data->value($params{ "id" })->type(''),
			"name"	=> SOAP::Data->value($params{ "name" })->type(''),
			"properties" => SOAP::Data->value($params{ "properties" })->type(''),
			"type" => SOAP::Data->value($params{ "type" })->type('')

		}, $class;
	}

	sub set_id {

		my( $self, $value ) = @_;
		$self->{ "id" } = SOAP::Data->value( $value )->type('');
	}

	sub get_id {

		my( $self ) = @_;
		my $id = $self->{ "id" };

		if (UNIVERSAL::isa( $id => 'SOAP::Data'))
		{
			$id = $id->SOAP::Data::value;
		}

		return $id;
	}

	sub set_name {

		my( $self, $value ) = @_;
		$self->{ "name" } = SOAP::Data->value( $value )->type('');
	}

	sub get_name {

		my( $self ) = @_;
		my $name = $self->{ "name" };

		if (UNIVERSAL::isa( $name => 'SOAP::Data'))
		{
			$name = $name->SOAP::Data::value;
		}

		return $name;
	}

	sub set_type {

		my( $self, $value ) = @_;
		$self->{ "type" } = SOAP::Data->value( $value )->type('');
	}

	sub get_type {

		my( $self ) = @_;
		my $type = $self->{ "type" };

		if (UNIVERSAL::isa( $type => 'SOAP::Data'))
		{
			$type = $type->SOAP::Data::value;
		}

		return $type;
	}

	sub set_properties {

		my( $self, $value ) = @_;
		$self->{ "properties" } = SOAP::Data->value( $value )->type('');
	}

	sub get_properties {

		my( $self ) = @_;
		my $properties = $self->{ "properties" };

		if (UNIVERSAL::isa( $properties => 'SOAP::Data'))
		{
			$properties = $properties->SOAP::Data::value;
		}

		return $properties;
	}



#
#
#
package APIAccessRight;

	sub new	{

		my( $class ) = shift;
		my( %params ) = @_;

		bless {

			"entityId" => SOAP::Data->value($params{ "entityId" })->type(''),
			"overrides"	=> SOAP::Data->value($params{ "overrides" })->type(''),
			"userId" => SOAP::Data->value($params{ "userId" })->type(''),
			"value" => SOAP::Data->value($params{ "value" })->type(''),
			"properties" => SOAP::Data->value($params{ "properties" })->type('')

		}, $class;
	}

	sub set_entityId {

		my( $self, $value ) = @_;
		$self->{ "entityId" } = SOAP::Data->value( $value )->type('');
	}

	sub get_entityId {

		my( $self ) = @_;
		my $entityId = $self->{ "entityId" };

		if (UNIVERSAL::isa( $entityId => 'SOAP::Data'))
		{
			$entityId = $entityId->SOAP::Data::value;
		}

		return $entityId;
	}

	sub set_overrides {

		my( $self, $value ) = @_;
		$self->{ "overrides" } = SOAP::Data->value( $value )->type('');
	}

	sub get_overrides {

		my( $self ) = @_;
		my $overrides = $self->{ "overrides" };

		if (UNIVERSAL::isa( $overrides => 'SOAP::Data'))
		{
			$overrides = $overrides->SOAP::Data::value;
		}

		return $overrides;
	}

	sub set_userId {

		my( $self, $value ) = @_;
		$self->{ "userId" } = SOAP::Data->value( $value )->type('');
	}

	sub get_userId {

		my( $self ) = @_;
		my $userId = $self->{ "userId" };

		if (UNIVERSAL::isa( $userId => 'SOAP::Data'))
		{
			$userId = $userId->SOAP::Data::value;
		}

		return $userId;
	}

	sub set_value {

		my( $self, $value ) = @_;
		$self->{ "value" } = SOAP::Data->value( $value )->type('');
	}

	sub get_value {

		my( $self ) = @_;
		my $value = $self->{ "value" };

		if (UNIVERSAL::isa( $value => 'SOAP::Data'))
		{
			$value = $value->SOAP::Data::value;
		}

		return $value;
	}

	sub set_properties {

		my( $self, $value ) = @_;
		$self->{ "properties" } = SOAP::Data->value( $value )->type('');
	}

	sub get_properties {

		my( $self ) = @_;
		my $properties = $self->{ "properties" };

		if (UNIVERSAL::isa( $properties => 'SOAP::Data'))
		{
			$properties = $properties->SOAP::Data::value;
		}

		return $properties;
	}
#
#
#
package APIDeploymentRole;

	sub new	{

		my( $class ) = shift;
		my( %params ) = @_;

		bless {

			"entityId" => SOAP::Data->value($params{ "entityId" })->type(''),
			"id" => SOAP::Data->value($params{ "id" })->type(''),
			"properties" => SOAP::Data->value($params{ "properties" })->type(''),
			"serverInterfaceId" => SOAP::Data->value($params{ "serverInterfaceId" })->type(''),
			"service" => SOAP::Data->value($params{ "service" })->type(''),
			"type" => SOAP::Data->value($params{ "type" })->type('')

		}, $class;
	}

	sub set_entityId {

		my( $self, $value ) = @_;
		$self->{ "entityId" } = SOAP::Data->value( $value )->type('');
	}

	sub get_entityId {

		my( $self ) = @_;
		my $entityId = $self->{ "entityId" };

		if (UNIVERSAL::isa( $entityId => 'SOAP::Data'))
		{
			$entityId = $entityId->SOAP::Data::value;
		}

		return $entityId;
	}

	sub set_id {

		my( $self, $value ) = @_;
		$self->{ "id" } = SOAP::Data->value( $value )->type('');
	}

	sub get_id {

		my( $self ) = @_;
		my $id = $self->{ "id" };

		if (UNIVERSAL::isa( $id => 'SOAP::Data'))
		{
			$id = $id->SOAP::Data::value;
		}

		return $id;
	}

	sub set_properties {

		my( $self, $value ) = @_;
		$self->{ "properties" } = SOAP::Data->value( $value )->type('');
	}

	sub get_properties {

		my( $self ) = @_;
		my $properties = $self->{ "properties" };

		if (UNIVERSAL::isa( $properties => 'SOAP::Data'))
		{
			$properties = $properties->SOAP::Data::value;
		}

		return $properties;
	}

	sub set_serverInterfaceId {

		my( $self, $value ) = @_;
		$self->{ "serverInterfaceId" } = SOAP::Data->value( $value )->type('');
	}

	sub get_serverInterfaceId {

		my( $self ) = @_;
		my $serverInterfaceId = $self->{ "serverInterfaceId" };

		if (UNIVERSAL::isa( $serverInterfaceId => 'SOAP::Data'))
		{
			$serverInterfaceId = $serverInterfaceId->SOAP::Data::value;
		}

		return $serverInterfaceId;
	}

	sub set_service {

		my( $self, $value ) = @_;
		$self->{ "service" } = SOAP::Data->value( $value )->type('');
	}

	sub get_service {

		my( $self ) = @_;
		my $service = $self->{ "service" };

		if (UNIVERSAL::isa( $service => 'SOAP::Data'))
		{
			$service = $service->SOAP::Data::value;
		}

		return $service;
	}

	sub set_type {

		my( $self, $value ) = @_;
		$self->{ "type" } = SOAP::Data->value( $value )->type('');
	}

	sub get_type {

		my( $self ) = @_;
		my $type = $self->{ "type" };

		if (UNIVERSAL::isa( $type => 'SOAP::Data'))
		{
			$type = $type->SOAP::Data::value;
		}

		return $type;
	}

#
#
#
package APIDeploymentOption;

	sub new	{

		my( $class ) = shift;
		my( %params ) = @_;

		bless {

			"id" => SOAP::Data->value($params{ "id" })->type(''),
			"name" => SOAP::Data->value($params{ "name" })->type(''),
			"properties" => SOAP::Data->value($params{ "properties" })->type(''),
			"type" => SOAP::Data->value($params{ "type" })->type(''),
			"value" => SOAP::Data->value($params{ "value" })->type('')

		}, $class;
	}

	sub set_id {

		my( $self, $value ) = @_;
		$self->{ "id" } = SOAP::Data->value( $value )->type('');
	}

	sub get_id {

		my( $self ) = @_;
		my $id = $self->{ "id" };

		if (UNIVERSAL::isa( $id => 'SOAP::Data'))
		{
			$id = $id->SOAP::Data::value;
		}

		return $id;
	}

	sub set_name {

		my( $self, $value ) = @_;
		$self->{ "name" } = SOAP::Data->value( $value )->type('');
	}

	sub get_name {

		my( $self ) = @_;
		my $name = $self->{ "name" };

		if (UNIVERSAL::isa( $name => 'SOAP::Data'))
		{
			$name = $name->SOAP::Data::value;
		}

		return $name;
	}

	sub set_properties {

		my( $self, $value ) = @_;
		$self->{ "properties" } = SOAP::Data->value( $value )->type('');
	}

	sub get_properties {

		my( $self ) = @_;
		my $properties = $self->{ "properties" };

		if (UNIVERSAL::isa( $properties => 'SOAP::Data'))
		{
			$properties = $properties->SOAP::Data::value;
		}

		return $properties;
	}

	sub set_type {

		my( $self, $value ) = @_;
		$self->{ "type" } = SOAP::Data->value( $value )->type('');
	}

	sub get_type {

		my( $self ) = @_;
		my $type = $self->{ "type" };

		if (UNIVERSAL::isa( $type => 'SOAP::Data'))
		{
			$type = $type->SOAP::Data::value;
		}

		return $type;
	}

	sub set_value {

		my( $self, $value ) = @_;
		$self->{ "value" } = SOAP::Data->value( $value )->type('');
	}

	sub get_value {

		my( $self ) = @_;
		my $value = $self->{ "value" };

		if (UNIVERSAL::isa( $value => 'SOAP::Data'))
		{
			$value = $value->SOAP::Data::value;
		}

		return $value;
	}



#
#
#
package APIUserDefinedField;

	sub new	{

		my( $class ) = shift;
		my( %params ) = @_;

		bless {

			"name" => SOAP::Data->value($params{ "name" })->type(''),
			"displayName" => SOAP::Data->value($params{ "displayName" })->type(''),
			"type" => SOAP::Data->value($params{ "type" })->type(''),
			"defaultValue" => SOAP::Data->value($params{ "defaultValue" })->type(''),
			"validatorProperties" => SOAP::Data->value($params{ "validatorProperties" })->type(''),
			"predefinedValues" => SOAP::Data->value($params{ "predefinedValues" })->type(''),
			"required" => SOAP::Data->value($params{ "required" })->type(''),
			"hideFromSearch" => SOAP::Data->value($params{ "hideFromSearch" })->type(''),
			"renderAsRadioButton" => SOAP::Data->value($params{ "renderAsRadioButton" })->type('')

		}, $class;
	}

	sub set_name {

		my( $self, $value ) = @_;
		$self->{ "name" } = SOAP::Data->value( $value )->type('');
	}

	sub get_name {

		my( $self ) = @_;
		my $name = $self->{ "name" };

		if (UNIVERSAL::isa( $name => 'SOAP::Data'))
		{
			$name = $name->SOAP::Data::value;
		}

		return $name;
	}
	
	sub set_displayName {

		my( $self, $value ) = @_;
		$self->{ "displayName" } = SOAP::Data->value( $value )->type('');
	}

	sub get_displayName {

		my( $self ) = @_;
		my $displayName = $self->{ "displayName" };

		if (UNIVERSAL::isa( $displayName => 'SOAP::Data'))
		{
			$displayName = $displayName->SOAP::Data::value;
		}

		return $displayName;
	}

	sub set_type {

		my( $self, $value ) = @_;
		$self->{ "type" } = SOAP::Data->value( $value )->type('');
	}

	sub get_type {

		my( $self ) = @_;
		my $type = $self->{ "type" };

		if (UNIVERSAL::isa( $type => 'SOAP::Data'))
		{
			$type = $type->SOAP::Data::value;
		}

		return $type;
	}
	
	sub set_defaultValue {

		my( $self, $value ) = @_;
		$self->{ "defaultValue" } = SOAP::Data->value( $value )->type('');
	}

	sub get_defaultValue {

		my( $self ) = @_;
		my $defaultValue = $self->{ "defaultValue" };

		if (UNIVERSAL::isa( $defaultValue => 'SOAP::Data'))
		{
			$defaultValue = $defaultValue->SOAP::Data::value;
		}

		return $defaultValue;
	}
	
	sub set_validatorProperties {

		my( $self, $value ) = @_;
		$self->{ "validatorProperties" } = SOAP::Data->value( $value )->type('');
	}

	sub get_validatorProperties {

		my( $self ) = @_;
		my $validatorProperties = $self->{ "validatorProperties" };

		if (UNIVERSAL::isa( $validatorProperties => 'SOAP::Data'))
		{
			$validatorProperties = $validatorProperties->SOAP::Data::value;
		}

		return $validatorProperties;
	}
	
	sub set_predefinedValues {

		my( $self, $value ) = @_;
		$self->{ "predefinedValues" } = SOAP::Data->value( $value )->type('');
	}

	sub get_predefinedValues {

		my( $self ) = @_;
		my $predefinedValues = $self->{ "predefinedValues" };

		if (UNIVERSAL::isa( $predefinedValues => 'SOAP::Data'))
		{
			$predefinedValues = $predefinedValues->SOAP::Data::value;
		}

		return $predefinedValues;
	}
	
	sub set_required {

		my( $self, $value ) = @_;
		$self->{ "required" } = SOAP::Data->value( $value )->type('');
	}

	sub get_required {

		my( $self ) = @_;
		my $required = $self->{ "required" };

		if (UNIVERSAL::isa( $required => 'SOAP::Data'))
		{
			$required = $required->SOAP::Data::value;
		}

		return $required;
	}
	
	sub set_hideFromSearch {

		my( $self, $value ) = @_;
		$self->{ "hideFromSearch" } = SOAP::Data->value( $value )->type('');
	}

	sub get_hideFromSearch {

		my( $self ) = @_;
		my $hideFromSearch = $self->{ "hideFromSearch" };

		if (UNIVERSAL::isa( $hideFromSearch => 'SOAP::Data'))
		{
			$hideFromSearch = $hideFromSearch->SOAP::Data::value;
		}

		return $hideFromSearch;
	}
	
	sub set_renderAsRadioButton {

		my( $self, $value ) = @_;
		$self->{ "renderAsRadioButton" } = SOAP::Data->value( $value )->type('');
	}

	sub get_renderAsRadioButton {

		my( $self ) = @_;
		my $renderAsRadioButton = $self->{ "renderAsRadioButton" };

		if (UNIVERSAL::isa( $renderAsRadioButton => 'SOAP::Data'))
		{
			$renderAsRadioButton = $renderAsRadioButton->SOAP::Data::value;
		}

		return $renderAsRadioButton;
	}
	
	
package Service;

	###
	#
	###
	sub connect {

		my( $class ) = shift;
		my( %params ) = @_;

		my $transport = ( defined ($params{ "enableSSL" }) and $params{ "enableSSL" } eq "true" ) ? 'https://' : 'http://';

		bless {
			'service_conn' => $service = SOAP::Lite
				-> ns( 'http://api.proteus.bluecatnetworks.com' )
				-> on_action( sub{ sprintf '%s/%s', @_ } )
				-> proxy
				(
					$transport.$params{ "address" }.'/Services/API', 
					cookie_jar => HTTP::Cookies->new( ignore_discard => 0 ),
					keep_alive => 1
				)
				-> on_fault(sub { my($soap, $res) = @_;
									die ref $res ? $res->faultstring : $soap->transport->status, "\n";
       })		}, $class;

		return $service;
	}

	###
	#
	###
	sub SOAP::Serializer::as_APIEntity {

		my ($soap, $obj, $name, $type, $attr) = @_;

		my @fields = ( 'id', 'name', 'properties', 'type' );

		$obj->set_name( SOAP::Utils::encode_data( $obj->get_name() ) );
		$obj->set_properties( SOAP::Utils::encode_data( $obj->get_properties() ) );

		return [ $name, $attr, [ map { $soap->encode_object($obj->{$_}, $_)  } @fields ] ];

	}

	###
	#
	###
	sub SOAP::Serializer::as_APIDeploymentRole {

		my ($soap, $obj, $name, $type, $attr) = @_;

		my @fields = ( 'entityId', 'id', 'properties', 'serverInterfaceId', 'service', 'type' );

		$obj->set_properties( SOAP::Utils::encode_data( $obj->get_properties() ) );

		return [ $name, $attr, [ map { $soap->encode_object($obj->{$_}, $_)  } @fields ] ];
	}

	###
	#
	###
	sub SOAP::Serializer::as_APIDeploymentOption {

		my ($soap, $obj, $name, $type, $attr) = @_;

		my @fields = ( 'id', 'name', 'properties', 'type', 'value' );

		$obj->set_properties( SOAP::Utils::encode_data( $obj->get_properties() ) );

		return [ $name, $attr, [ map { $soap->encode_object($obj->{$_}, $_)  } @fields ] ];
	}


	###
	#
	###
	sub SOAP::Serializer::as_APIUserDefinedField {

		my ($soap, $obj, $name, $type, $attr) = @_;

		my @fields = ( 'name', 'displayName', 'type', 'defaultValue', 'validatorProperties', 'predefinedValues', 'required', 'hideFromSearch', 'renderAsRadioButton' );

		$obj->set_properties( SOAP::Utils::encode_data( $obj->get_properties() ) );

		return [ $name, $attr, [ map { $soap->encode_object($obj->{$_}, $_)  } @fields ] ];
	}	


	###
	#
	###
	sub blessAPIEntity {

		my( $class ) = shift;
		my( %params ) = @_;

		my $object = $params{ "object" };
		bless( $object, APIEntity );

		return APIEntity->new( "id" => $object->get_id(),
								"name" => $object->get_name(),
								"type" => $object->get_type(),
								"properties" => $object->get_properties() );
	}

	###
	#
	###
	sub blessAPIAccessRight {

		my( $class ) = shift;
		my( %params ) = @_;

		my $object = $params{ "object" };
		bless( $object, APIAccessRight );

		return APIAccessRight->new( "entityId" => $object->get_entityId(),
								"userId" => $object->get_userId(),
								"value" => $object->get_value(),
								"overrides" => $object->get_overrides(),
								"properties" => $object->get_properties() );
	}

	###
	#
	###
	sub blessAPIDeploymentRole {

		my( $class ) = shift;
		my( %params ) = @_;

		my $object = $params{ "object" };
		bless( $object, APIDeploymentRole );

		return APIDeploymentRole->new( "entityId" => $object->get_entityId(),
								"id" => $object->get_id(),
								"properties" => $object->get_properties(),
								"serverInterfaceId" => $object->get_serverInterfaceId(),
								"service" => $object->get_service(),
								"type" => $object->get_type() );
	}

	###
	#
	###
	sub blessAPIDeploymentOption {

		my( $class ) = shift;
		my( %params ) = @_;

		my $object = $params{ "object" };
		bless( $object, APIDeploymentOption );

		return APIDeploymentOption->new( "id" => $object->get_id(),
								"name" => $object->get_name(),
								"properties" => $object->get_properties(),
								"type" => $object->get_type(),
								"value" => $object->get_value() );
	}
	
	###
	#
	###
	sub blessAPIUserDefinedField {

		my( $class ) = shift;
		my( %params ) = @_;

		my $object = $params{ "object" };
		bless( $object, APIUserDefinedField );

		return APIUserDefinedField->new( "name" => $object->get_name(),
								"displayName" => $object->get_displayName(),
								"type" => $object->get_type(),
								"defaultValue" => $object->get_defaultValue(),
								"validatorProperties" => $object->get_validatorProperties(),
								"predefinedValues" => $object->get_predefinedValues(),
								"required" => $object->get_required(),
								"hideFromSearch" => $object->get_hideFromSearch(),
								"renderAsRadioButton" => $object->get_renderAsRadioButton() );
	}	

#
#
#
package ObjectTypes;

use constant {
	Entity => 'Entity',

	Configuration => 'Configuration',
	View => 'View',
	Zone => 'Zone',
	InternalRootZone => 'InternalRootZone',
	ZoneTemplate => 'ZoneTemplate',
	EnumZone => 'EnumZone',
	EnumNumber => 'EnumNumber',
	RPZone => 'RPZone',

	HostRecord => 'HostRecord',
	AliasRecord => 'AliasRecord',
	MXRecord => 'MXRecord',
	TXTRecord => 'TXTRecord',
	SRVRecord => 'SRVRecord',
	GenericRecord => 'GenericRecord',
	HINFORecord => 'HINFORecord',
	NAPTRRecord => 'NAPTRRecord',
	RecordWithLink => 'RecordWithLink',
	ExternalHostRecord => 'ExternalHostRecord',

	StartOfAuthority => 'StartOfAuthority',

	IP4Block => 'IP4Block',
	IP4Network => 'IP4Network',
	IP6Block => 'IP6Block',
	IP6Network => 'IP6Network',
	IP4NetworkTemplate => 'IP4NetworkTemplate',
	DHCP4Range => 'DHCP4Range',
	IP4Address => 'IP4Address',
	IP6Address => 'IP6Address',

	MACPool => 'MACPool',
	DenyMACPool => 'DenyMACPool',
	MACAddress => 'MACAddress',

	TagGroup => 'TagGroup',
	Tag => 'Tag',

	User => 'User',
	UserGroup => 'UserGroup',

	Server => 'Server',
	NetworkServerInterface => 'NetworkServerInterface',
	PublishedServerInterface => 'PublishedServerInterface',
	NetworkInterface => 'NetworkInterface',
	VirtualInterface => 'VirtualInterface',

	LDAP => 'LDAP',
	Kerberos => 'Kerberos',
	Radius => 'Radius',

	TFTPGroup => 'TFTPGroup',
	TFTPFolder => 'TFTPFolder',
	TFTPFile => 'TFTPFile',
	TFTPDeploymentRole => 'TFTPDeploymentRole',

	DNSDeploymentRole => 'DNSDeploymentRole',
	DHCPDeploymentRole => 'DHCPDeploymentRole',

	DNSOption => 'DNSOption',
	DHCPV4ClientOption => 'DHCPV4ClientOption',
	DHCPServiceOption => 'DHCPServiceOption',
	DHCPV6ClientOption => 'DHCPV6ClientOption',
	DHCPV6ServiceOption => 'DHCPV6ServiceOption',

	VendorProfile => 'VendorProfile',
	VendorOptionDef => 'VendorOptionDef',
	VendorClientOption => 'VendorClientOption',

	CustomOptionDef => 'CustomOptionDef',

	DHCPMatchClass => 'DHCPMatchClass',
	DHCPSubClass => 'DHCPSubClass',

	Device => 'Device',
	DeviceType => 'DeviceType',
	DeviceSubtype => 'DeviceSubtype',

	DeploymentScheduler => 'DeploymentScheduler',
	IP4ReconciliationPolicy => 'IP4ReconciliationPolicy',

	DNSSECSigningPolicy => 'DNSSECSigningPolicy',

	IP4IPGroup => 'IP4IPGroup',
	ResponsePolicy => 'ResponsePolicy',
	KerberosRealm => 'KerberosRealm',
	DHCPRawOption => 'DHCPRawOption',
	DNSRawOption => 'DNSRawOption',
	DHCP6Range => 'DHCP6Range',

	ACL => 'ACL',
};

#
#
#
package ObjectProperties;

use constant {
	name => 'name',
	sharedNetwork => 'sharedNetwork',
	CIDR => 'CIDR',
	start => 'start',
	end => 'end',
	template => 'template',
	deployable => 'deployable',
	authenticator => 'authenticator',
	securityPrivilege => 'securityPrivilege',
	historyPrivilege => 'historyPrivilege',
	password => 'password',
	email => 'email',
	phoneNumber => 'phoneNumber',
	users => 'users',
	version => 'version',
	description => 'description',
	addresses => 'addresses',
	address => 'address',
	state => 'state',
	server => 'server',
	serverInterface => 'serverInterface',
	zoneTransServerInterface => 'zoneTransServerInterface',
	macPool => 'macPool',
	macAddress => 'macAddress',
	view => 'view',
	refresh => 'refresh',
	retry => 'retry',
	expire => 'expire',
	minimum => 'minimum',
	absoluteName => 'absoluteName',
	userAccessType => 'userAccessType',
	userType => 'userType',

	# Block & Networks
	allowDuplicateHost => 'allowDuplicateHost',
	pingBeforeAssign => 'pingBeforeAssign',
	inheritAllowDuplicateHost => 'inheritAllowDuplicateHost',
	inheritPingBeforeAssign => 'inheritPingBeforeAssign',
	defaultDomains => 'defaultDomains',
	dnsRestrictions => 'dnsRestrictions',
	defaultView => 'defaultView',
	inheritDNSRestrictions => 'inheritDNSRestrictions',
	inheritDefaultDomains => 'inheritDefaultDomains',
	inheritDefaultView => 'inheritDefaultView',

	# getNextAvailableIPRange
	isLargerAllowed => 'isLargerAllowed',
	traversalMethod => 'traversalMethod',
	autoCreate => 'autoCreate',
	reuseExisting => 'reuseExisting',

	comments => 'comments',
	ttl => 'ttl',
	reverseRecord => 'reverseRecord',
	txt => 'txt',
	parentZoneName => 'parentZoneName',
	linkedParentZoneName => 'linkedParentZoneName',
	linkToExternalHost => 'linkToExternalHost',
	linkedRecordName => 'linkedRecordName',
	priority => 'priority',
	port => 'port',
	weight => 'weight',
	order => 'order',
	preference => 'preference',
	service => 'service',
	regexp => 'regexp',
	replacement => 'replacement',
	flags => 'flags',
	os => 'os',
	cpu => 'cpu',
	type => 'type',
	rdata => 'rdata',
	excludeDHCPRange => 'excludeDHCPRange',
	skip => 'skip',
	offset => 'offset',
	parentId => 'parentId',
	parentType => 'parentType',
	addressIds => 'addressIds',

	#Deployment role and deployment option
	inherited => 'inherited',

	#IPv6 Blocks and networks
	prefix => 'prefix',
	DUID => 'DUID',

	#IP4 Dhcp Range
	SplitStaticAddresses => 'SplitStaticAddresses',
	defineRangeBy => "defineRangeBy",
	
	#vendor profile
	identifier => 'identifier',

	# servers
	defaultInterfaceAddress => 'defaultInterfaceAddress',
	publishedInterfaceAddress => 'publishedInterfaceAddress',
	secondaryServerInterfaceId => 'secondaryServerInterfaceId',
	fullHostName => 'fullHostName',
	profile => 'profile',
	connected => 'connected',
	upgrade => 'upgrade',
	readOnly => 'readOnly',
	servicesIPv4Address => 'servicesIPv4Address',
	servicesIPv4Netmask => 'servicesIPv4Netmask',
	servicesIPv6Address => 'servicesIPv6Address',
	servicesIPv6Subnet => 'servicesIPv6Subnet',
	xhaIPv4Address => 'xhaIPv4Address',
	xhaIPv4Netmask => 'xhaIPv4Netmask',
	redundancyScenario => 'redundancyScenario',
	useWindowsServerAgent => 'useWindowsServerAgent',
	ProteusDDW => 'ProteusDDW',

	# xHA
	xHAServerId => 'xHAServerId',
	activeServerId => 'activeServerId',
	passiveServerId => 'passiveServerId',
	activeServerNewIPv4Address => 'activeServerNewIPv4Address',
	activeServerPassword => 'activeServerPassword',
	passiveServerPassword => 'passiveServerPassword',
	pingAddress => 'pingAddress',
	ip6Address => 'ip6Address',
	newManagementAddress => 'newManagementAddress',
	activeServerIPv4AddressForNAT => 'activeServerIPv4AddressForNAT',
	passiveServerIPv4AddressForNAT => 'passiveServerIPv4AddressForNAT',
	activeServerNewIPv4AddressForNAT => 'activeServerNewIPv4AddressForNAT',
	backboneActiveServerIPv4Address => 'backboneActiveServerIPv4Address',
	backboneActiveServerIPv4Netmask => 'backboneActiveServerIPv4Netmask',
	backbonePassiveServerIPv4Address => 'backbonePassiveServerIPv4Address',
	backbonePassiveServerIPv4Netmask => 'backbonePassiveServerIPv4Netmask',
	activeNodeId => 'activeNodeId',
	passiveNodeId => 'passiveNodeId',
	activeNodePhysicalAddress => 'activeNodePhysicalAddress',
	passiveNodePhysicalAddress => 'passiveNodePhysicalAddress',
	breakInProteusOnly => 'breakInProteusOnly',
	overrideDHCPValidation => 'overrideDHCPValidation',
	checkDHCPConfigurationDeployment => 'checkDHCPConfigurationDeployment',
	overrideDNSValidation => 'overrideDNSValidation',
	checkDNSConfigurationDeployment => 'checkDNSConfigurationDeployment',
	checkDNSZonesDeployment => 'checkDNSZonesDeployment',
	postLoadZoneIntegrityValidationDNSDeploy => 'postLoadZoneIntegrityValidationDNSDeploy',
	checkNamesValidationModeDNSDeploy => 'checkNamesValidationModeDNSDeploy',
	checkIfMXRecordsAreIPsDNSDeploy => 'checkIfMXRecordsAreIPsDNSDeploy',
	checkIfMXRecordsPointToCNAMEsDNSDeploy => 'checkIfMXRecordsPointToCNAMEsDNSDeploy',
	checkIfNSRecordsAreIPsDNSDeploy => 'checkIfNSRecordsAreIPsDNSDeploy',
	checkIfSRVRecordsPointToCNAMEsDNSDeploy => 'checkIfSRVRecordsPointToCNAMEsDNSDeploy',
	checkForNonTerminalWildcardsDNSDeploy => 'checkForNonTerminalWildcardsDNSDeploy',

	authenticationCredentialDomain => 'authenticationCredentialDomain',
    authenticationCredentialUsername => 'authenticationCredentialUsername',
    authenticationCredentialPassword => 'authenticationCredentialPassword',
    enableDNS => 'enableDNS',
    enableDHCP => 'enableDHCP',
    importViewName => 'importViewName',
    
    # Network Template
    gateway => 'gateway',
	reservedAddresses => 'reservedAddresses',
	reservedBlock => 'RESERVED_BLOCK',
	reservedDHCPRange => 'RESERVED_DHCP_RANGE',
	ipGroup => 'IP_GROUP',
	templateType => 'templateType',
	zoneTemplateType => 'zonetemplate',
	IP4NetworkTemplateType => 'ip4networktemplate',
	zoneTemplateReapplyMode => 'zoneReapplyMode',
	templateReapplyModeIgnore => 'IGNORE',
	templateReapplyModeUpdate => 'UPDATE_IF_POSSIBLE',
	templateReapplyModeOverwrite => 'OVERWRITE',
	gatewayReapplyMode => 'gatewayReapplyMode',
	reservedAddressesReapplyMode => 'reservedAddressesReapplyMode',
	dhcpRangesReapplyMode => 'dhcpRangesReapplyMode',
	ipGroupsReapplyMode => 'ipGroupsReapplyMode',
	optionsReapplyMode => 'optionsReapplyMode',
	noGateway => 'noGateway',
	

	# dynamic resource records - updating and deleting	
	noServerUpdate => 'noServerUpdate',
	
    # workflow
    Recommend => 'Recommend',
    Default => 'Default',
    transientParent => 'transientParent',

	# Option definition for vendor profile and custom options
	optionId => 'optionId',
	optionType => 'optionType',
	optionAllowMultiple => 'optionAllowMultiple',
	optionDescription => 'optionDescription',
	
	# Device
	deviceTypeId => 'deviceTypeId',
	deviceSubtypeId => 'deviceSubtypeId',
	ip4Addresses => 'ip4Addresses',
	ip6Addresses => 'ip6Addresses',

    # naming policy overriding
    overrideNamingPolicy => 'overrideNamingPolicy',

	#DNSSEC
	deleteKeys => 'deleteKeys',
	
	#Custom/Vendor Option Definition
	displayName => 'displayName',
	
	#IP4Reconciliation Policy.
 	seedRouterAddress => 'seedRouterAddress',
	snmpVersion => 'snmpVersion',
	snmpPortNumber => 'snmpPortNumber',
	snmpCommunityString => 'snmpCommunityString',
	securityLevel => 'securityLevel',
	context => 'context',
	authenticationType => 'authenticationType',
	privacyType => 'privacyType',
	authPassphrase => 'authPassphrase',
	privacyPassphrase => 'privacyPassphrase',
	networkBoundaries => 'networkBoundaries',
	schedule => 'schedule',
	activeStatus => 'activeStatus',
	enableLayer2Discovery => 'enableLayer2Discovery',
	acceptanceCriteriaReclaim => 'acceptanceCriteriaReclaim',
	acceptanceCriteriaUnknown => 'acceptanceCriteriaUnknown',
	acceptanceCriteriaMismatch => 'acceptanceCriteriaMismatch',
	overrideList=> 'overrideList',

	#Deployment
	services => 'services',
	forceDNSFullDeployment => 'forceDNSFullDeployment',
	
	#Names of the properties which can be used in argument 'options' used by getZonesByHint and getIP4NetworksByHint
	hint => 'hint',
	accessRight => 'accessRight',
	overrideType => 'overrideType',
	retrieveFields => 'retrieveFields',

	#Option names for getEntitiesByNameUsingOptions
	ignoreCase => 'ignoreCase',

	#DHCP Match class & Sub class
	matchCriteria => 'matchCriteria',
	matchOffset => 'matchOffset',
	matchLength => 'matchLength',
	customMatchRawString => 'customMatchRawString',
	ignoreError => 'ignoreError',
	matchValue => 'matchValue',

	#DNS Response Policy
	redirectTarget => 'redirectTarget',
	responsePolicyType => 'responsePolicyType',

	# Access right options
	workflowLevel => 'workflowLevel',
	deploymentAllowed => 'deploymentAllowed',
	quickDeploymentAllowed => 'quickDeploymentAllowed',

	# IP4 Dhcp Range
	splitStaticAddresses => 'SplitStaticAddresses',

	# IP4 IP group
	size => 'size',
	positionRangeBy => 'positionRangeBy',
	positionValue => 'positionValue',
	ipGroupBySize => 'ipGroupBySize',

	configName => 'configName',
	deviceName => 'deviceName',
	ipAddressMode => 'ipAddressMode',
	ipEntity => 'ipEntity',
	viewName => 'viewName',
	zoneName => 'zoneName',
	recordName => 'recordName',
	macAddressMode => 'macAddressMode',
	macEntity => 'macEntity',
	allowDuplicateHosts => 'allowDuplicateHosts',
	netmask => 'netmask',
	ip => 'ip',
	VCO_MODE_REQUEST_VALUE => 'REQUEST_VALUE',
	VCO_MODE_REQUEST_STATIC => 'REQUEST_STATIC',
	VCO_MODE_REQUEST_DHCP_RESERVED => 'REQUEST_DHCP_RESERVED',
	VCO_MODE_PASS_VALUE => 'PASS_VALUE',

	# replication
	secondStandbyServer => 'secondStandbyServer',

	#ACL
	aclValues => 'aclValues',
};

#
#
#
package AccessRightValues;

use constant {
	HideAccess => 'HIDE',
	ViewAccess => 'VIEW',
	AddAccess => 'ADD',
	ChangeAccess => 'CHANGE',
	FullAccess => 'FULL',
};

#
#
#
package DNSDeploymentRoleTypes;

use constant {
	NONE => 'NONE',
	MASTER => 'MASTER',
	MASTER_HIDDEN => 'MASTER_HIDDEN',
	SLAVE => 'SLAVE',
	SLAVE_STEALTH => 'SLAVE_STEALTH',
	FORWARDER => 'FORWARDER',
	STUB => 'STUB',
    RECURSION => 'RECURSION',
    AD_MASTER => 'AD_MASTER',
};

#
#
#
package DHCPDeploymentRoleTypes;

use constant {
	NONE => 'NONE',
	MASTER => 'MASTER',
};

#
#
#
package DNSOptions;

use constant {
	ALLOW_XFER => 'allow-xfer',
	ALSO_NOTIFY => 'also-notify',
	ALLOW_DDNS => 'allow-ddns',
	ALLOW_RECURSION => 'allow-recursion',
	ALLOW_QUERY => 'allow-query',
	FORWARDING_POLICY => 'forwarding-policy',
	FORWARDING => 'forwarding',
	NOTIFY => 'notify',
	MAX_CACHE_TTL => 'max-cache-ttl',
	MAX_NEG_CACHE_TTL => 'max-neg-cache-ttl',
	TRANSFERS_IN => 'transfers-in',
	TRANSFERS_OUT => 'transfers-out',
	TCP_CLIENTS => 'tcp-clients',
	MAX_TRANSFER_TIME_OUT => 'max-transfer-time-out',
	MAX_TRANSFER_TIME_IN => 'max-transfer-time-in',
	MAX_TRANSFER_IDLE_OUT => 'max-transfer-idle-out',
	MAX_TRANSFER_IDLE_IN => 'max-transfer-idle-in',
	TRANSFER_FORMAT => 'transfer-format',
	MAX_CACHE_SIZE => 'max-cache-size',
	RECURSIVE_CLIENTS => 'recursive-clients',
	TRANSFERS_PER_NS => 'transfers-per-ns',
	LAME_TTL => 'lame-ttl',
	ALLOW_UPDATE_FORWARDING => 'allow-update-forwarding',
	VERSION => 'version',
	MATCH_CLIENTS => 'match-clients',
	DENY_CLIENTS => 'deny-clients',
	CACHE => 'cache',
	ALLOW_NOTIFY => 'allow-notify',
	ALLOW_QUERY_CACHE => 'allow-query-cache',
	DNSSEC_ACCEPT_EXPIRED => 'dnssec-accept-expired',
	DNSSEC_ENABLE => 'dnssec-enable',
	DNSSEC_KEY_DIRECTORY => 'dnssec-key-directory',
	DNSSEC_MUST_BE_SECURE => 'dnssec-must-be-secure',
	DNSSEC_TRUST_ANCHORS => 'dnssec-trust-anchors',
	DNSSEC_VALIDATION => 'dnssec-validation',
	ZONE_DEFAULT_TTL => 'zone-default-ttl',
	START_OF_AUTHORITY => 'start-of-authority',
};

#
#
#
package DNSOptionValues;

use constant {
	SINGLE => 'SINGLE',
	MANY_ANSWERS => 'MANY_ANSWERS',
	FIRST => 'FIRST',
	ONLY => 'ONLY',
};

#
#
#
package DHCPClientOptions;

use constant {
	TIME_OFFSET => 'time-offset',
	ROUTER => 'router',
	TIME_SERVER => 'time-server',
	IEN_NAME_SERVER => 'ien-name-server',
	DNS_SERVER => 'dns-server',
	LOG_SERVER => 'log-server',
	COOKIE_SERVER => 'cookie-server',
	LPR_SERVER => 'lpr-server',
	IMPRESS_SERVER => 'impress-server',
	RESOURCE_LOCATION_SERVER => 'resource-location-server',
	HOST_NAME => 'host-name',
	BOOT_SIZE => 'boot-size',
	MERIT_DUMP_FILE => 'merit-dump-file',
	DOMAIN_NAME => 'domain-name',
	SWAP_SERVER => 'swap-server',
	ROOT_PATH => 'root-path',
	EXTENSIONS_PATH => 'extensions-path',
	IP_FORWARDING => 'ip-forwarding',
	NON_LOCAL_SOURCE_ROUTING => 'non-local-source-routing',
	POLICY_FILTER_MASKS => 'policy-filter-masks',
	MAX_DATAGRAM_REASSEMBLU => 'max-datagram-reassembly',
	DEFAULT_IP_TTL => 'default-ip-ttl',
	PATH_MTU_AGING_TIMEOUT => 'path-mtu-aging-timeout',
	PATH_MTU_PLATEAU_TABLE => 'path-mtu-plateau-table',
	INTERFACE_MTU => 'interface-mtu',
	ALL_SUBNETS_LOCAL => 'all-subnets-local',
	BROADCAST_ADDRESS => 'broadcast-address',
	PERFORM_MASK_DISCOVERY => 'perform-mask-discovery',
	MASK_SUPPLIER => 'mask-supplier',
	ROUTER_DISCOVERY => 'router-discovery',
	ROUTER_SOLICITATION_ADDRESS => 'router-solicitation-address',
	STATIC_ROUTES => 'static-routes',
	TRAILER_ENCAPSULATION => 'trailer-encapsulation',
	ARP_CACHE_TIMEOUT => 'arp-cache-timeout',
	IEEE_802_3_ENCAPSULATION => 'ieee-802-3-encapsulation',
	DEFAULT_TCP_TTL => 'default-tcp-ttl',
	TCP_KEEP_ALIVE_INTERVAL => 'tcp-keep-alive-interval',
	TCP_KEEP_ALIVE_GARBAGE => 'tcp-keep-alive-garbage',
	NIS_DOMAIN => 'nis-domain',
	NIS_SERVER => 'nis-server',
	NTP_SERVER => 'ntp-server',
	WINS_NBNS_SERVER => 'wins-nbns-server',
	NETBIOS_OVER_TCP_IP_NBDD => 'netbios-over-tcp-ip-nbdd',
	WINS_NBT_NODE_TYPE => 'wins-nbt-node-type',
	NETBIOS_SCOPE_ID => 'netbios-scope-id',
	X_WINDOW_FONT_MANAGER => 'x-window-font-manager',
	X_WINDOW_DISPLAY_MANAGER => 'x-window-display-manager',
	NETWARE_IP_DOMAIN => 'nwip.domain',
	NETWARE_IP_NSQ_BROADCAST => 'nwip.nsq-broadcast',
	NETWARE_IP_PREFERRED_DSS => 'nwip.preferred-dss',
	NETWARE_IP_NEAREST_NWIP_SERVER => 'nwip.nearest-nwip-server',
	NETWARE_IP_AUTO_RETRIES => 'nwip.auto-retries',
	NETWARE_IP_AUTO_RETRY_DELAY => 'nwip.auto-retry-delay',
	NETWARE_IP_1_1_COMPATIBILITY => 'nwip.1-1-compatibility',
	NETWARE_IP_PRIMARY_DSS => 'nwip.primary-dss',
	NIS_PLUS_DOMAIN_NAME => 'nis-plus-domain-name',
	NIS_PLUS_SERVER => 'nis-plus-server',
	TFTP_SERVER_NAME => 'tftp-server-name',
	BOOT_FILE_NAME => 'boot-file-name',
	MOBILE_IP_HOME_AGENT => 'mobile-ip-home-agent',
	SMTP_SERVER => 'smtp-server',
	POP3_SERVER => 'pop3-server',
	NNTP_SERVER => 'nntp-server',
	WWW_SERVER => 'www-server',
	FINGER_SERVER => 'finger-server',
	IRC_SERVER => 'irc-server',
	STREET_TALK_SERVER => 'street-talk-server',
	STREET_TALK_DIRECTORY_ASSISTANCE_SERVER => 'street-talk-directory-assistance-server',
	SLP_DIRECTORY_AGENT => 'slp-directory-agent',
	SLP_SERVICE_SCOPE => 'slp-service-scope',
	NDS_SERVER => 'nds-server',
	NDS_TREE_NAME => 'nds-tree-name',
	NDS_CONTEXT => 'nds-context',
	UAP_SERVER => 'uap-server',
	NAME_SERVICE_SEARCH => 'name-service-search',
	DOMAIN_SEARCH => 'domain-search',
	SIP_SERVERS => 'sip-server',
	CLASSLESS_STATIC_ROUTE_OPTION => 'classless-static-route-option',
	CCC_PRIMARY_DHCP_SERVER_ADDRESS => 'cablelabs.primary-dhcp-server',
	CCC_SECONDARY_DHCP_SERVER_ADDRESS => 'cablelabs.secondary-dhcp-server',
	CCC_PROVISIONING_SERVER_ADDRESS => 'cablelabs.provisioning-server',
	CCC_AS_BACKOFF_AND_RETRY => 'cablelabs.as-backoff-retry',
	CCC_AP_BACKOFF_RETRY => 'cablelabs.ap-backoff-retry',
	CCC_KERBEROS_REALM_NAME => 'cablelabs.kerberos-realm-name',
	CCC_TICKET_GRANTING_SERVER_UTILIZATION => 'cablelabs.ticket-granting-server-utilization',
	CCC_PROVISIONING_TIMER_VALUE => 'cablelabs.provisioning-timer-value',
	TFTP_SERVER_ADDRESS => 'tftp-server',
	IP_TELEPHONE => 'ip-telephone',
	WPAD_URL => 'wpad-url',
	VENDOR_ENCAPSULATED_OPTIONS => 'vendor-encapsulated-options',
};

#
#
#
package DHCPServiceOptions;

use constant {
	DEFAULT_LEASE_TIME => 'default-lease-time',
	MAX_LEASE_TIME => 'max-lease-time',
	MIN_LEASE_TIME => 'min-lease-time',
	CLIENT_UPDATES => 'client-updates',
	DDNS_DOMAINNAME => 'ddns-domainname',
	DDNS_HOSTNAME => 'ddns-hostname',
	DDNS_REV_DOMAINNAME => 'ddns-rev-domainname',
	DDNS_TTL => 'ddns-ttl',
	DDNS_UPDATES => 'ddns-updates',
	PING_CHECK => 'ping-check',
	ALWAYS_BROADCAST => 'always-broadcast',
	ALWAYS_REPLY_RFC1048 => 'always-reply-rfc1048',
	DYNAMIC_BOOTP_LEASE_LENGTH => 'dynamic-bootp-lease-length',
	FILENAME => 'filename',
	GET_LEASE_HOSTNAMES => 'get-lease-hostnames',
	MIN_SECS => 'min-secs',
	NEXT_SERVER => 'next-server',
	SERVER_IDENTIFIER => 'server-identifier',
	SITE_OPTION_SPACE => 'site-option-space',
	STASH_AGENT_OPTIONS => 'stash-agent-options',
	UPDATE_OPTIMIZATION => 'update-optimization',
	UPDATE_STATIC_LEASES => 'update-static-leases',
	USE_LEASE_ADDR_FOR_DEFAULT_ROUTE => 'use-lease-addr-for-default-route',
	ONE_LEASE_PER_CLIENT => 'one-lease-per-client',

    ALLOW_MAC_POOL => 'allow-mac-pool',
    DENY_MAC_POOL => 'deny-mac-pool',
    DENY_UNKNOWN_MAC_ADDRESSES => 'deny-unknown-mac-addresses',
    LOAD_BALANCE_OVERRIDE => 'load-balance-override',
    LOAD_BALANCE_SPLIT => 'load-balance-split',
    MCLT => 'mclt',
    MAX_RESPONSE_DELAY => 'max-response-delay',
    MAX_UNACKED_UPDATES => 'max-unacked-updates',
    DHCP_CLASS_LEASE_LIMIT => 'dhcp-class-lease-limit',

 	ALLOW_DHCP_CLASS_MEMBERS => 'allow-dhcp-class-members',
	DENY_DHCP_CLASS_MEMBERS => 'deny-dhcp-class-members',
	APPLY_MAC_AUTHENTICATION_POLICY => 'apply-mac-authentication-policy',
	DENY_DHCP_CLIENTS => 'deny-dhcp-clients',
	CONFLICT_DETECTION => 'conflict-detection',
	UPDATE_CONFLICT_DETECTION => 'update-conflict-detection',
	DO_REVERSE_UPDATES => 'do-reverse-updates',
};

#
#
#
package DHCP6ClientOptions;

use constant {
	UNICAST => 'unicast',
	DNS_SERVERS => 'dns-servers',
	DOMAIN_SEARCH_LIST => 'domain-search-list',
	SNTP_SERVERS => 'sntp-servers',
	INFORMATION_REFRESH_TIME => 'information-refresh-time',
};

#
#
#
package DHCP6ServiceOptions;

use constant {
	DEFAULT_LEASE_TIME => 'default-lease-time',
	CLIENT_UPDATES => 'client-updates',
	DDNS_DOMAINNAME => 'ddns-domainname',
	DDNS_HOSTNAME => 'ddns-hostname',
	DDNS_TTL => 'ddns-ttl',
	DDNS_UPDATES => 'ddns-updates',
	DO_REVERSE_UPDATES => 'do-reverse-updates',
	SERVER_PREFERENCE => 'server-preference',
	PREFERRED_LIFETIME => 'preferred-lifetime',
	RAPID_COMMIT => 'rapid-commit',
	LIMIT_ADDRESSES_PER_IA => 'limit-addresses-per-ia',
};

#
#
#
package EnumServices;

use constant {
	H323 => 'H323',
	SIP => 'SIP',
	ifax_mailto => 'ifax mailto',
	pres => 'pres',
	web_http => 'web http',
	web_https => 'web https',
	ft_ftp => 'ft ftp',
	email_mailto => 'email mailto',
	fax_tel => 'fax tel',
	sms_tel => 'sms tel',
	sms_mailto => 'sms mailto',
	ems_tel => 'ems tel',
	ems_mailto => 'ems mailto',
	mms_tel => 'mms tel',
	mms_mailto => 'mms mailto',
	VPIM_MAILTO => 'VPIM MAILTO',
	VPIM_LDAP => 'VPIM LDAP',
	voice_tel => 'voice tel',
	pstn_tel => 'pstn tel',
	pstn_sip => 'pstn sip',
	xmpp => 'xmpp',
	im => 'im',
};

#
#
#
package UserSecurityPrivileges;

use constant {
	NO_ACCESS => 'NO_ACCESS',
	VIEW_MY_ACCESS_RIGHTS => 'VIEW_MY_ACCESS_RIGHTS',
	VIEW_OTHERS_ACCESS_RIGHTS => 'VIEW_OTHERS_ACCESS_RIGHTS',
	CHANGE_ACCESS_RIGHTS => 'CHANGE_ACCESS_RIGHTS',
	ADD_ACCESS_RIGHTS => 'ADD_ACCESS_RIGHTS',
	DELETE_ACCESS_RIGHTS => 'DELETE_ACCESS_RIGHTS',
};


#
#
#
package UserHistoryPrivileges;

use constant {
	HIDE => 'HIDE',
	VIEW_HISTORY_LIST => 'VIEW_HISTORY_LIST',
};


#
#
#
package UserAccessType;

use constant {
	GUI => 'GUI',
	API => 'API',
	GUI_AND_API => 'GUI_AND_API',
};

#
#
#
package UserType;

use constant {
	ADMIN => 'ADMIN',
	REGULAR => 'REGULAR',
};


#
#
#
package DeploymentStatus;

use constant {
	EXECUTING => -1,
	INITIALIZING => 0,
	QUEUED => 1,
	CANCELLED => 2,
	FAILED => 3,
	NOT_DEPLOYED => 4,
	WARNING => 5,
	INVALID => 6,
	DONE => 7,
	NO_RECENT_DEPLOYMENT => 8,
};


#
#
#
package IPAssignmentActionValues;

use constant {
	MAKE_STATIC => 'MAKE_STATIC',
	MAKE_RESERVED => 'MAKE_RESERVED',
	MAKE_DHCP_RESERVED => 'MAKE_DHCP_RESERVED',
};

#
#
#
package ServerCapabilityProfiles;

use constant {
	ADONIS_1750 => 'ADONIS_1750',
	ADONIS_1000 => 'ADONIS_1000',
	ADONIS_750 => 'ADONIS_750',
	ADONIS_500 => 'ADONIS_500',
	ADONIS_250 => 'ADONIS_250',
	ADONIS_XMB => 'ADONIS_XMB',
	ADONIS_1950 => 'ADONIS_1950',
	ADONIS_1900 => 'ADONIS_1900',
	ADONIS_1200 => 'ADONIS_1200',
	ADONIS_800 => 'ADONIS_800',
	OTHER_DNS_SERVER => 'OTHER_DNS_SERVER',
	WINDOWS_SERVER => 'WINDOWS_SERVER',
	PROTEUS_DDW => 'PROTEUS_DDW',
	ADONIS_XMB2 => 'ADONIS_XMB2',
	AFILIAS_DNS_SERVER => 'AFILIAS_DNS_SERVER',
	ADONIS_1925 => 'ADONIS_1925',
	DNS_DHCP_SERVER_20 => 'DNS_DHCP_SERVER_20',
	DNS_DHCP_SERVER_40 => 'DNS_DHCP_SERVER_40',
	DNS_DHCP_SERVER_45 => 'DNS_DHCP_SERVER_45',
	DNS_DHCP_SERVER_60 => 'DNS_DHCP_SERVER_60',
	DNS_DHCP_SERVER_100 => 'DNS_DHCP_SERVER_100',
	DNS_DHCP_SERVER_100_D => 'DNS_DHCP_SERVER_100_D',
	DNS_SECURITY_SERVER_500 => 'DNS_SECURITY_SERVER_500'
};

#
#
#
package EntityCategories;

use constant {
	all => 'ALL',
	admin => 'ADMIN',
	Configuration => 'CONFIGURATION',
	deploymentOptions => 'DEPLOYMENT_OPTIONS',
	deploymentRoles => 'DEPLOYMENT_ROLES',
	deploymentSchedulers => 'DEPLOYMENT_SCHEDULER',
	dhcpClassObjects => 'DHCPCLASSES_OBJECTS',
	dhcpNACPolicies => 'DHCPNACPOLICY_OBJECTS',
	IP4Objects => 'IP4_OBJECTS',
	IP6Objects => 'IP6_OBJECTS',
	MACPoolObjects => 'MACPOOL_OBJECTS',
	resourceRecords => 'RESOURCE_RECORD',
	servers => 'SERVERS',
	tags => 'TAGS',
	tasks => 'TASKS',
	TFTPObjects => 'TFTP_OBJECTS',
	vendorProfiles => 'VENDOR_PROFILES',
	viewZones => 'VIEWS_ZONES',
	TSIGKeys => 'TSIG_KEYS',
	GSS => 'GSS',
	DHCPZones => 'DHCP_ZONES',
};

#
#
#
package PositionRangeBy;

use constant {
	START_OFFSET => 'START_OFFSET',
	END_OFFSET => 'END_OFFSET',
	START_ADDRESS => 'START_ADDRESS',
};

#
#
#
package DHCPVendorOptionTypes;

use constant {
	IP4 => 'IP4',
	TEXT => 'TEXT',
	UNSIGNED_INT_8 => 'UNSIGNED_INT_8',
	UNSIGNED_INT_16 => 'UNSIGNED_INT_16',
	UNSIGNED_INT_32 => 'UNSIGNED_INT_32',
	UNSIGNED_INT_64 => 'UNSIGNED_INT_64',
	SIGNED_INT_8 => 'SIGNED_INT_8',
	SIGNED_INT_16 => 'SIGNED_INT_16',
	SIGNED_INT_32 => 'SIGNED_INT_32',
	# SIGNED_INT_64 => 'SIGNED_INT_64', # refer to pts-9475
	BOOLEAN => 'BOOLEAN',
	IP4_MASK => 'IP4_MASK',
	STRING => 'STRING',
	BINARY => 'BINARY',
	ENCAPSULATED => 'ENCAPSULATED',
};
#
#
#
package DHCPCustomOptionTypes;

use constant {
	IP4 => 'IP4',
	TEXT => 'TEXT',
	UNSIGNED_INT_8 => 'UNSIGNED_INT_8',
	UNSIGNED_INT_16 => 'UNSIGNED_INT_16',
	UNSIGNED_INT_32 => 'UNSIGNED_INT_32',
	UNSIGNED_INT_64 => 'UNSIGNED_INT_64',
	SIGNED_INT_8 => 'SIGNED_INT_8',
	SIGNED_INT_16 => 'SIGNED_INT_16',
	SIGNED_INT_32 => 'SIGNED_INT_32',
	# SIGNED_INT_64 => 'SIGNED_INT_64', # refer to pts-9475
	BOOLEAN => 'BOOLEAN',
	IP4_MASK => 'IP4_MASK',
	STRING => 'STRING',
	BINARY => 'BINARY',
	ENCAPSULATED => 'ENCAPSULATED',
	IP4_RANGE => 'IP4_RANGE',
	IP4_BLOCK => 'IP4_BLOCK',
};

#
#
#
package UserDefinedFieldType;

use constant {
	TEXT => 'TEXT',
	DATE => 'DATE',
	BOOLEAN => 'BOOLEAN',
	INTEGER => 'INTEGER',
	LONG => 'LONG',
	EMAIL => 'EMAIL',
	URL => 'URL',
};

#
#
#
package UserDefinedFieldValidatorProperties;

use constant {
	MIN => 'min',
	MAX => 'max',
	MIN_LENGTH => 'minLength',
	MAX_LENGTH => 'maxLength',
	PATTERN => 'pattern',
};

#
#
#
package DHCPServiceOptionConstants;

use constant {
	DDNS_HOSTNAME_TYPE_IP => 'ip',
	DDNS_HOSTNAME_TYPE_MAC => 'mac',
	DDNS_HOSTNAME_TYPE_FIXED => 'fixed',
	DDNS_HOSTNAME_TYPE_DUID => 'duid',
	DDNS_HOSTNAME_POSITION_APPEND => 'append',
	DDNS_HOSTNAME_POSITION_PREPEND => 'prepend',
};

#
#
#
package DNSSECKeyFormat;

use constant {
	TRUST_ANCHOR => 'TRUST_ANCHOR',
	DNS_KEY => 'DNS_KEY',
	DS_RECORD => 'DS_RECORD',
};

#
#
#
package DHCPClassMatchCriteria;

use constant {
	DHCP_CLASS_HARDWARE => 'MATCH_HARDWARE',
	DHCP_CLASS_CLIENT_ID => 'MATCH_DHCP_CLIENT_ID',
	DHCP_CLASS_VENDOR_ID => 'MATCH_DHCP_VENDOR_ID',
	DHCP_CLASS_AGENT_CIRCUIT_ID => 'MATCH_AGENT_CIRCUIT_ID',
	DHCP_CLASS_AGENT_REMOTE_ID => 'MATCH_AGENT_REMOTE_ID',
	DHCP_CLASS_CUSTOM_MATCH => 'CUSTOM_MATCH',
	DHCP_CLASS_CUSTOM_MATCH_IF => 'CUSTOM_MATCH_IF',
};

#
#
#
package ResponsePolicyTypes;

use constant {
	REDIRECT => 'REDIRECT',
	BLACKLIST => 'BLACKLIST',
	BLACKHOLE => 'BLACKHOLE',
	WHITELIST => 'WHITELIST',
};

#
#
#
package DNSZonesDeploymentValidationCheck;

use constant {
	FAIL => 'FAIL',
	WARN => 'WARN',
	IGNORE => 'IGNORE',
	NONE => 'NONE',
	FULL => 'FULL',
	FULL_SIBLING => 'FULL_SIBLING',
	LOCAL => 'LOCAL',
	LOCAL_SIBLING => 'LOCAL_SIBLING',
};

#
#
#
package WorkflowLevels;

use constant {
	None => 'NONE',
	Recommend => 'RECOMMEND',
	Approve => 'APPROVE',
};

#
#
#
package DeploymentServices;

use constant {
	DNS => 'DNS',
	DHCP => 'DHCP',
	TFTP => 'TFTP',
	DHCPv6 => 'DHCPv6',
};

#
#
#
package SNMPSecurityLevels;

use constant {
	AUTH_PRIV => 'AUTH_PRIV',
	AUTH_NOPRIV => 'AUTH_NOPRIV',
	NOAUTH_NOPRIV => 'NOAUTH_NOPRIV',
};

#
#
#
package ServiceTypes;

use constant {
	DNS => 'DNS',
	DHCP => 'DHCP',
};

#
#
#
package TraversalMethodology;

use constant {
	NO_TRAVERSAL => 'NO_TRAVERSAL',
	DEPTH_FIRST => 'DEPTH_FIRST',
	BREADTH_FIRST => 'BREADTH_FIRST',
};

#
#
#
package DefineRangeBy;

use constant {
	IP_ADDRESSES => 'IP_ADDRESSES',
	OFFSETS => 'OFFSETS',
	OFFSET_AND_SIZE => 'OFFSET_AND_SIZE',
	OFFSET_AND_PERCENTAGE => 'OFFSET_AND_PERCENTAGE',
};
