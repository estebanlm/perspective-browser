showing
openOnPackage: aPackage
	SBStartingPath 
		use: (self browserEnvironment pathFromPackage: aPackage)
		during: [ self buildBrowser openOn: self browserEnvironment ]