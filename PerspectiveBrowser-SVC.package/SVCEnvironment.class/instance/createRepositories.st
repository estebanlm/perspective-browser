factory
createRepositories
	^ MCRepositoryGroup default repositories 
		collect: [ :each | SVCRepository model: each ]