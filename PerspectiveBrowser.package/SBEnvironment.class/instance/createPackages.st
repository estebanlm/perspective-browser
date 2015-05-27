factory
createPackages
	| newPackages |
	
	newPackages := RPackageOrganizer default packages 
		collect: [ :each | 
			(SBPackage model: each)
				tags: ((each classTags size > 1) "Size 1 means unique tag... no need to show it"
					ifTrue: [ 
						self 
							sortTags: (each classTags collect: [ :eachTag | SBPackageTag model: eachTag ])
							inPackage: each ]
					ifFalse: [ nil ]);
				yourself ].
			
	^ self sortPackages: newPackages