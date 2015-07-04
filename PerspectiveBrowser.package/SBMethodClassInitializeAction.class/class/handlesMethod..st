testing
handlesMethod: aMethod 
	^ (aMethod methodClass isMeta) 
		and: [ aMethod selector = #initialize ] 