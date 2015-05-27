accessing
startingInstanceSideSelection
	^ self value 
		ifNotNil: [ :path | path startingInstanceSide ]
		ifNil: [ true ]