accessing
classProtocolNamed: aString
	^ self classProtocols detect: [ :each | each name = aString ]