accessing
actionFor: aMethod target: aBrowser
	^ IconicButton new 
		target: aMethod originMethod;
		actionSelector: #browse;
		labelGraphic: Smalltalk ui icons traitIcon;
		color: Color transparent;
		extent: 12 @ 12;
		helpText: 'Browse the trait';
		borderWidth: 0