accessing
classWithModel: aClass
	^ self classes detect: [ :each | each model = aClass ]