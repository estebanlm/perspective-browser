building
buildRepositoriesMenuOn: presenter
	presenter 
		act: [ :this | self addRepository ifTrue: [ this update ]  ] 
			icon: Smalltalk ui icons addIcon  
			on: $a 
			entitled: 'Add repository';
		selectionAct: [ :this :project | (self commitProject: project) ifTrue: [ this update ]  ] 
			icon: Smalltalk ui icons commitIcon
			on: $c
			entitled: 'Commit project'.	