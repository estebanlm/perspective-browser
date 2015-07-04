accessing
configurationPackages 
	^ self packages select: [ :each | each name beginsWith: 'Configuration' ]