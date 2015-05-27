accessing
methodWithModel: aMethod 
	^ self methods detect: [ :each | each model = aMethod ]