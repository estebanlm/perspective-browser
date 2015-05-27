accessing
packageWithModel: aPackage
	^ self packages detect: [ :each | each model = aPackage ]