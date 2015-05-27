accessing
startingPackageSelection
	^ self value 
		ifNotNil: [ :path | path startingPackage ]