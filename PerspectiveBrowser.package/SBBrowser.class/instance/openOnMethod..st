showing
openOnMethod: aMethod
	SBStartingPath 
		use: (self browserEnvironment pathFromMethod: aMethod)
		during: [ ^ self buildBrowser openOn: self browserEnvironment ]