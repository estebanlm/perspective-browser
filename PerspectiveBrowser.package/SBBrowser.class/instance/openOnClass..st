showing
openOnClass: aClass
	SBStartingPath 
		use: (self browserEnvironment pathFromClass: aClass)
		during: [ ^ self buildBrowser openOn: self browserEnvironment ]