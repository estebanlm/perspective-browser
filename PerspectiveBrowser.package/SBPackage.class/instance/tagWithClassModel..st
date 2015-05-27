accessing
tagWithClassModel: aClass
	^ self tags 
		detect: [ :each | each includesModel: aClass ]
		ifNone: [ nil ]