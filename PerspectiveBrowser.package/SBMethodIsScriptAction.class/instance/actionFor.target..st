accessing
actionFor: aMethod target: aBrowser
	^ IconicButton new 
		target: aBrowser;
		actionSelector: #runScriptMethod:;
	 	arguments: { aMethod };
		labelGraphic: Smalltalk ui icons scriptManagerIcon;
		color: Color transparent;
		extent: 12 @ 12;
		helpText: 'Run the script(s)';
		borderWidth: 0 