accessing
classProtocols
	^ classProtocols ifNil: [ classProtocols := self createClassProtocols ]