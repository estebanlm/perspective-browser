building
buildPackagesPaneOn: presenter
	presenter tree
		title: 'Packages';
		display: [ :env | env packages ];
		children: [ :node | node children ]; 
		icon: [ :each | each actionOn: self ];
		format: [ :each | each displayName ];
		initialize: [ :tree | tree selection: SBStartingPath startingPackageSelection ]