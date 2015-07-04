accessing
instanceVariables
	^ instanceVariables ifNil: [ instanceVariables := self createInstanceVariables ]