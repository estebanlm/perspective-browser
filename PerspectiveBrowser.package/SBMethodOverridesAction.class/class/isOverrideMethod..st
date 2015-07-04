private
isOverrideMethod: aMethod
	| selector |
	selector := aMethod selector.
	aMethod methodClass allSuperclassesDo: [:each | 
		(each includesSelector: selector)
			ifTrue: [ ^ true ]].
	^ false