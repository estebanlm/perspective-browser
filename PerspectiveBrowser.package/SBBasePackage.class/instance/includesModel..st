testing
includesModel: aClass
	^ self classes anySatisfy: [ :each | each model = aClass ]