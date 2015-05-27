accessing
packages
	^ packages ifNil: [ packages := self sortPackages: self createPackages ]