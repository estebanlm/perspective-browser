building
buildPackagesPaneOn: presenter title: aString display: aBlock
	presenter fastTable
		title: aString;
		display: aBlock;
		icon: [ :each | each icon ];
		in: [ :this | self buildPackagesMenuOn: this ];
		column: 'Name' evaluated: [ :each | each name ];
		column: 'Version' 
			evaluated: [ :each | each versionWithAutor ] 
			sortedBy: [ :a :b | b versionNumber < a versionNumber ];
		sortBlock: [ :a :b | a name < b name ];
		searchOn: [ :text :each | each match: text ].