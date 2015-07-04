building
buildClassesPaneOn: presenter
	presenter fastList 
		title: 'Classes';
		display: [ :packageOrTag | packageOrTag classes ];
		icon: [ :each | each actionOn: self ];
		format: [ :each | each displayName ];
		initialize: [ :list | list selection: SBStartingPath startingClassSelection ]