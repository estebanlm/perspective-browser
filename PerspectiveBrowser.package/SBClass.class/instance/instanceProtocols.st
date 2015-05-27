accessing
instanceProtocols
	^ instanceProtocols ifNil: [ instanceProtocols := self createInstanceProtocols ]