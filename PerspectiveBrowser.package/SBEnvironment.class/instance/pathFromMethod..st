accessing
pathFromMethod: aMethod
	| package class instanceSide protocol method |
	
	package := self packageWithModel: aMethod package.
	class := package classWithModel: aMethod methodClass instanceSide.
	protocol := (instanceSide := aMethod methodClass isInstanceSide)
		ifTrue: [ class instanceProtocolNamed: aMethod protocol ]
		ifFalse: [ class classProtocolNamed: aMethod protocol ]. 
	method := protocol methodWithModel: aMethod.
	^ SBStartingPath new 
		startingPackage: package;
		startingClass: class;
		startingInstanceSide: instanceSide;
		startingProtocol: protocol; 
		startingMethod: method;
		yourself