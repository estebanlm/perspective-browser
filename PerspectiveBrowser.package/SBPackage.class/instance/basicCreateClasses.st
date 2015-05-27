factory
basicCreateClasses
	^ self model definedClasses collect: [ :each | SBClass model: each ]