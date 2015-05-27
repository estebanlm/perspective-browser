accessing
actionFor: aMethod target: aBrowser
	^ IconicButton new 
		target: aBrowser;
		actionSelector: #runExampleMethod:;
	 	arguments: { aMethod };
		labelGraphic: Smalltalk ui icons smallDoItIcon;
		color: Color transparent;
		extent: 12 @ 12;
		helpText: 'Run the example';
		borderWidth: 0 