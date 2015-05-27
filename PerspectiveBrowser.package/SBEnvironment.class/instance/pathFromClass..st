accessing
pathFromClass: aClass
	| package class |
	
	package := self packageWithModel: aClass package.
	class := package classWithModel: aClass.
	^ SBStartingPath new 
		startingPackage: package;
		startingClass: class;
		yourself