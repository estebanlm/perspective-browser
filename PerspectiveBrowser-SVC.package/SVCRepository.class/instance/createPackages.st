factory
createPackages
	^ MCWorkingCopy allManagers 
		select: [ :each | each repositoryGroup includes: self model ]
		thenCollect: [ :each | SVCPackage model: each ]