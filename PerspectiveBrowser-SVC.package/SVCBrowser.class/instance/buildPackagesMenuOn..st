building
buildPackagesMenuOn: presenter
	presenter 
		act: [ :this :repository | (self commitRepository: repository) ifTrue: [ this update ]  ] 
			icon: Smalltalk ui icons commitIcon
			on: $C
			entitled: 'Commit repository';		
		selectionAct: [ :this | (self commitPackage: this selection) ifTrue: [ this update ]  ] 
			on: $c
			entitled: 'Commit package'.