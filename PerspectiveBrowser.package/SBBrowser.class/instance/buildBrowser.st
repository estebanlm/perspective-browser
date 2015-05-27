building
buildBrowser
	| browser |
	
	browser := GLMTabulator new
		title: [ self selectedNameOrDefault ];
		initialExtent: self class initialExtent;
		row: [ :row |
			row 
				column: #packages;
				column: #classes;
				column: #methods span: 2 ];
		row: #sources;
		yourself.
	"Panes"	
	browser transmit 
		to: #packages; 
		andShow: [ :a | self buildPackagesPaneOn: a ].
	browser transmit 
		from: #packages; 
		to: #classes; 
		andShow: [ :a | self buildClassesPaneOn: a ].
	browser transmit 
		from: #classes; 
		to: #methods; 
		andShow: [ :a | self buildMethodsPaneOn: a ].
	"Sources"
	browser transmit 
		from: #classes; 
		to: #sources; 
		andShow: [ :a | self buildClassSourcesOn: a ].
	browser transmit 
		from: #methods; 
		to: #sources; 
		andShow: [ :a | self buildMethodSourcesOn: a ].
		
	^ browser