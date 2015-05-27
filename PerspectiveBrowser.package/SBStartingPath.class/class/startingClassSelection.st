accessing
startingClassSelection
	^ self value 
		ifNotNil: [ :path | path startingClass ]