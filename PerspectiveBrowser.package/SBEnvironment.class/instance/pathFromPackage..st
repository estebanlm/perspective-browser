accessing
pathFromPackage: aPackage
	| package |
	
	package := self packageWithModel: aPackage.
	^ SBStartingPath new 
		startingPackage: package;
		yourself