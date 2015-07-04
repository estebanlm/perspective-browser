accessing
classVariables
	^ classVariables ifNil: [ classVariables := self createClassVariables ]