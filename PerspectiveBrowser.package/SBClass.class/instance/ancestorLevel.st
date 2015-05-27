accessing
ancestorLevel 
	^ ancestorLevel ifNil: [ ancestorLevel := self withAllAncestors size ]