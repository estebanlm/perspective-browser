building
buildMethodsClassSidePaneOn: presenter
	^ self 
		buildMethodsPaneOn: presenter 
		title: 'Class' 
		display: [ :class | class classProtocols ]
		initializeProtocol: [ :list |
			SBStartingPath startingInstanceSideSelection 
				ifFalse: [ list selection: SBStartingPath startingProtocolSelection ] ]
		initializeMethod: [ :list |
			SBStartingPath startingInstanceSideSelection 
				ifFalse: [ list selection: SBStartingPath startingMethodSelection ] ] 
	