accessing
iconOverriddenFor: aMethod target: aBrowser
	^ IconicButton new
		target: aBrowser;
		actionSelector: #arrowDown:;
		arguments: { aMethod };
		labelGraphic: Smalltalk ui icons arrowDownIcon;
		color: Color transparent;
		helpText: 'Browse overriding messages';
		extent: 12 @ 12;
		borderWidth: 0