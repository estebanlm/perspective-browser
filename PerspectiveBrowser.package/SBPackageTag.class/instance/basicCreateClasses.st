factory
basicCreateClasses
	^ self model classes collect: [ :each | SBClass model: each ]