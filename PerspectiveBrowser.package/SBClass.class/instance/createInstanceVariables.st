factory
createInstanceVariables
	^ self model instanceSide instVarNames
		collect: [ :each | SBVariable model: each ]