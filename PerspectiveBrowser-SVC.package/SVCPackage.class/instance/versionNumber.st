accessing
versionNumber
	^ self versionInfo ifNotNil: [ :info | info versionNumber ]