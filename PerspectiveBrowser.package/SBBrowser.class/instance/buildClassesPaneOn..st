building
buildClassesPaneOn: presenter
	presenter list 
		title: 'Classes';
		display: [ :packageOrTag | packageOrTag classes ];
		icon: [ :each | each actionOn: self ];
		format: #displayName;
		initialize: [ :list | list selection: SBStartingPath startingClassSelection ]