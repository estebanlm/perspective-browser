building
buildMethodSourcesOn: presenter
	presenter smalltalkCode
		title: [ :method | method name ];
		smalltalkClass: [ :method | method sourceClass ];
		display: [ :method | method sourceCode ]