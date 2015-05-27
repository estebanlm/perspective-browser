accessing
withAllAncestors
	| result 	eachAncestor |
	
	result := {self}.
	eachAncestor := self ancestor.
	[ eachAncestor notNil ] 
		whileTrue: [ 
	 		result := result copyWith: eachAncestor. 
			eachAncestor := eachAncestor ancestor ].
	^ result reversed