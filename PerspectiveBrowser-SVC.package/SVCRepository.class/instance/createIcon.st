factory
createIcon
	| newIcon |
	newIcon := SVCRepositoryIconVisitor visit: self model.
	^ self isDirty 
		ifTrue: [ newIcon makeDirty ]
		ifFalse: [ newIcon ]