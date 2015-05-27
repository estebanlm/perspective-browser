accessing
actionOn: aBrowser
	((self model includesBehavior: (Smalltalk globals at: #TestCase ifAbsent: [ false ])) 
		and: [ self model isAbstract not ])
		ifTrue: [
			self model hasPassedTest ifTrue: [ ^ Smalltalk ui icons testGreenIcon ].
			self model hasFailedTest ifTrue: [ ^ Smalltalk ui icons testYellowIcon ].
			self model hasErrorTest ifTrue: [ ^ Smalltalk ui icons testRedIcon ]. 
			
			^ Smalltalk ui icons testNotRunIcon ].
		
	self model organization classComment 
		ifEmpty: [ ^ Smalltalk ui icons uncommentedClassIcon ].

	^ self model systemIcon