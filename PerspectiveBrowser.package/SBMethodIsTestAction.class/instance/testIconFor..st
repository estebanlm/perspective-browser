private
testIconFor: method
	method hasPassedTest ifTrue: [ ^ Smalltalk ui icons testGreenIcon ].
	method hasFailedTest ifTrue: [ ^ Smalltalk ui icons testYellowIcon ].
	method hasErrorTest ifTrue: [ ^ Smalltalk ui icons testRedIcon ].
	
	^ Smalltalk ui icons testNotRunIcon.
		