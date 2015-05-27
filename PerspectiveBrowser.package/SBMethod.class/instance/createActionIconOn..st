factory
createActionIconOn: aBrowser
	^ (SBMethodAction for: self model) 
		actionFor: self model
		target: aBrowser