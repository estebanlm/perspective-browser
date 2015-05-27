accessing
startingMethodSelection
	^ self value 
		ifNotNil: [ :path | path startingMethod ]