private
sortMethods: aCollection
	^ aCollection sorted: [ :a :b | a name < b name ]