testing
handlesMethod: aMethod
	^ aMethod isOverridden 
		or: [ self isOverrideMethod: aMethod ]
