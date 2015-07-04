accessing
versionWithAutor
	self author ifNil: [ ^ nil ].
	self versionNumber ifNil: [ ^ nil ].
	
	^ '{1}.{2}' format: { self author. self versionNumber }