factory
createMethods
	^ self sortMethods: (self model methods 
		collect: [ :each | SBMethod model: (self environmentClass >> each) ])