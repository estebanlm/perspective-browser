accessing
packages
	^ packages ifNil: [ packages := self createPackages ]