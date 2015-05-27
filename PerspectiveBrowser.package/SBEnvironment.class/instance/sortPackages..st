private
sortPackages: aCollection
	^ aCollection sorted: [ :a :b | a name < b name ]