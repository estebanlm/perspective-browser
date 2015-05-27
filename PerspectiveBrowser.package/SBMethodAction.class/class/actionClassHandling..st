private
actionClassHandling: aMethod
	^ (self allSubclasses sorted: [ :a :b | a priority < b priority ])
		detect: [ :each | each handlesMethod: aMethod ]