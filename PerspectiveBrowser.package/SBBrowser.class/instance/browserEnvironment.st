accessing
browserEnvironment
	^ browserEnvironment ifNil: [ browserEnvironment := SBEnvironment new ]