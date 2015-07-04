accessing
displayName
	^ displayName ifNil: [ displayName := SVCRepositoryLabelVisitor visit: self model ]