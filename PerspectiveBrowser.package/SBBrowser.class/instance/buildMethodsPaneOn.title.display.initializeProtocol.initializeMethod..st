building
buildMethodsPaneOn: presenter 
	title: title 
	display: displayBlock 
	initializeProtocol: protocolBlock 
	initializeMethod: methodBlock

	| browser |
	
	browser := GLMTabulator new
		title: title;
		column: #protocols;
		column: #methods;
		yourself.
	
	browser transmit to: #protocols; andShow: [ :a |
		a fastList
			title: 'Protocols'; 
			display: displayBlock;
			icon: [ :each | each actionOn: self ];
			format: [ :each | each displayName ];
			initialize: protocolBlock ].
		
	browser transmit from: #protocols; to: #methods; andShow: [ :a | 
		a fastList 
			title: 'Methods';
			display: [ :protocol | protocol methods ];
			icon: [ :each | each actionOn: self ];
			format: [ :each | each displayName ];
			initialize: methodBlock ].
		
	browser transmit from: #methods; toOutsidePort: #selection.
		
	^ browser