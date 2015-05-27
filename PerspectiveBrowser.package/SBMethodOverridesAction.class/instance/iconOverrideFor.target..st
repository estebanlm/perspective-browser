accessing
iconOverrideFor: aMethod target: aBrowser
	^ IconicButton new
		target: aBrowser;
		actionSelector: #arrowUp:;
		arguments: { aMethod };
		labelGraphic: Smalltalk ui icons arrowUpIcon;
		color: Color transparent;
		helpText: 'Browse overriden message';
		extent: 12 @ 12;
		borderWidth: 0