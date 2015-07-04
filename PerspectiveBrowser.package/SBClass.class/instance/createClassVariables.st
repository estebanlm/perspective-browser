factory
createClassVariables
	^ (self model instanceSide classVarNames, self model classSide instVarNames)
		collect: [ :each | SBVariable model: each ]