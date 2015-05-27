accessing
methods 
	^ methods ifNil: [ methods := self createMethods ]