accessing
displayName
	"Append some spaces to simulate a tree"
	^ String streamContents: [ :stream | 
		1 to: self ancestorLevel do: [ :i | stream << '   ' ].
		stream << self name ]