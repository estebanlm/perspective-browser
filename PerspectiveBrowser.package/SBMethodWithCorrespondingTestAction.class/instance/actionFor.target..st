accessing
actionFor: aMethod target: aBrowser
	^ IconicButton new
		target: aBrowser;
		actionSelector: #runTestForAMethod:notifying:;
		arguments: {aMethod. true};
		labelGraphic: (self testIconFor: aMethod correspondingTestMethod);
		color: Color transparent;
		helpText: 'Run the test';
		extent: 12 @ 12;
		borderWidth: 0