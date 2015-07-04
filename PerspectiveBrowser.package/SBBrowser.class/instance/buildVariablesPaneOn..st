building
buildVariablesPaneOn: presenter
	
	| browser |
	
	browser := GLMTabulator new
		title: 'Variables';
		column: #instance;
		column: #class;
		yourself.
	
	browser transmit to: #instance; andShow: [ :a |
		a fastList
			title: 'Instance'; 
			display: [ :class | class instanceVariables ];
			format: [ :each | each displayName ] ].
		
	browser transmit to: #class; andShow: [ :a | 
		a fastList 
			title: 'Class';
			display: [ :class | class classVariables ];
			format: [ :each | each displayName ] ].
		
	browser transmit from: #instance; toOutsidePort: #selection.
	browser transmit from: #class; toOutsidePort: #selection.
		
	^ browser	