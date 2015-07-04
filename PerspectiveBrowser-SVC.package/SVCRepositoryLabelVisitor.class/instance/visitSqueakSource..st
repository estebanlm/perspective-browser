visitor
visitSqueakSource: aRepository 
	| url |
	url := aRepository location splitOn: '/'.
	^ String streamContents: [ :stream | stream << (url at: 4) ]	