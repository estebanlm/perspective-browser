private
sortTags: aCollection inPackage: aPackage
	^ aCollection sorted: [ :a :b | (a name = aPackage name) or: [ a name < b name ] ]