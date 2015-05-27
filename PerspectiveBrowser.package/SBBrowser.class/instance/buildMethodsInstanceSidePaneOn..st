building
buildMethodsInstanceSidePaneOn: presenter
	^ self 
		buildMethodsPaneOn: presenter 
		title: 'Instance' 
		display: [ :class | class instanceProtocols ]
		initializeProtocol: [ :list |
			SBStartingPath startingInstanceSideSelection 
				ifTrue: [ list selection: SBStartingPath startingProtocolSelection ] ]
		initializeMethod: [ :list |
			SBStartingPath startingInstanceSideSelection 
				ifTrue: [ list selection: SBStartingPath startingMethodSelection ] ] 	