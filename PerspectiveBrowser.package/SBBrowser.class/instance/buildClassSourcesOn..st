building
buildClassSourcesOn: presenter
	presenter smalltalkCode
		title: 'Definition';
		display: [ :class | class instanceSideDefinition ].
	presenter smalltalkCode 
		title: 'Class Definition';
		display: [ :class | class classSideDefinition ].
	presenter text
		title: 'Comment';
		display: [ :class | class comment ]