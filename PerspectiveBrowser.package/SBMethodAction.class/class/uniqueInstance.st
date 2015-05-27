instance creation
uniqueInstance
	self = SBMethodAction ifTrue: [ self error: 'I''m an abstract class. Use one of my children.' ].
	^ uniqueInstance ifNil: [ uniqueInstance := self basicNew initialize ]