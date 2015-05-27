accessing
instanceProtocolNamed: aString
	^ self instanceProtocols detect: [ :each | each name = aString ]