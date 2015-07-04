building
buildRepositoriesPaneOn: presenter 
	presenter fastList
		title: 'Repositories';
		display: [ :svc | svc repositories ];
		"Actions"
		in: [ :this | self buildRepositoriesMenuOn: this ]; 
		"Showing"
		icon: [ :each | each icon ];
		format: [ :each | each displayName ];
		sortBlock: [ :a :b | a displayName < b displayName ];
		searchOn: [ :text :each | each match: text ]