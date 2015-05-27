accessing
actionOn: aBrowser
	self isEmpty ifTrue: [ ^ Smalltalk ui icons emptyPackageIcon ].
	self isDirty ifTrue: [ ^ Smalltalk ui icons dirtyMonticelloPackageIcon ].
	
	^ Smalltalk ui icons packageIcon