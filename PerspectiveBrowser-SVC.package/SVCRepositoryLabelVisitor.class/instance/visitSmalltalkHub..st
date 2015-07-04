visitor
visitSmalltalkHub: aRepository 
	| url |
	url := aRepository location splitOn: '/'.
	^ String streamContents: [ :stream | 
		stream << (url at: 5) << ' / ' << (url at: 6) ]