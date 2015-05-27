accessing
iconOverrideAndOverriddenFor: aMethod target: aBrowser
	^ Morph new
		changeTableLayout;
		listDirection: #topToBottom;
		extent: 12@12;
		color: Color transparent;
		addMorph: ((self iconOverriddenFor: aMethod target: aBrowser)
			extent: 12@6;
			yourself);
		addMorph: ((self iconOverrideFor: aMethod target: aBrowser)
			extent: 12@6;
			yourself);
		yourself.	