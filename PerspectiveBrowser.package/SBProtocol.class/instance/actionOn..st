accessing
actionOn: aBrowser
	| protocolName |
	
	protocolName := self model name.

	self model isExtensionProtocol ifTrue: [ ^ Smalltalk ui icons protocolExtensionIcon ].
	(protocolName beginsWith: 'private') ifTrue: [ ^ Smalltalk ui icons protocolPrivateIcon ].
	((protocolName = 'initialization' )
		or: [ (protocolName = 'initialize-release') 
		or: [ protocolName = 'finalization' ] ])
		ifTrue: [ ^ Smalltalk ui icons protocolProtectedIcon ].	
	
	^ Smalltalk ui icons protocolNoneIcon