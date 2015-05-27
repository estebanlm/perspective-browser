testing
handlesMethod: aMethod
	^ aMethod isOverridden or: [ aMethod isOverride ]
