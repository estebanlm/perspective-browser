testing
handlesMethod: aMethod
	^ (aMethod methodClass isMeta) and: [ 
		(aMethod selector beginsWith: 'example')
			 and: [ aMethod numArgs isZero ] ] 