accessing
svcEnvironment
	^ svcEnvironment ifNil: [ svcEnvironment := SVCEnvironment new ]