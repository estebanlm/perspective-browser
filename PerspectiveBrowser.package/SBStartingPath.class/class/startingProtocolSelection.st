accessing
startingProtocolSelection
	^ self value 
		ifNotNil: [ :path | path startingProtocol ]