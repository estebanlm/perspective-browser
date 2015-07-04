*PerspectiveBrowser-SVC
repositoryGemstoneIcon
	^ self icons
			at: #'repositoryGemstoneIcon'
			ifAbsentPut: [ 
				Form
					extent: 16@16
					depth: 32
					fromArray: self repositoryGemstoneIconContents 
					offset: 0@0 ]