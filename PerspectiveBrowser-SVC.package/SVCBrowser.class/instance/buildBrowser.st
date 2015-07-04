building
buildBrowser
	| browser |
	
	browser := GLMTabulator new
		title: self class title;
		titleIcon: self class taskbarIcon;
		initialExtent: self class initialExtent;
		column: #repositories;
		column: #packages span: 2;
		yourself.
	"Panes"	
	browser transmit 
		to: #repositories; 
		andShow: [ :a | self buildRepositoriesPaneOn: a ].
	browser transmit 
		from: #repositories;
		to: #packages; 
		andShow: [ :a | 
			a wrapper
				title: [ :repository | repository displayName ];
				show: [ :wrapPresenter |
					self buildPackagesPaneOn: wrapPresenter 
						title: 'Packages' 
						display: [ :repository | repository nonConfigurationPackages ].
					self buildPackagesPaneOn: wrapPresenter 
						title: 'Configurations' 
						display: [ :repository | repository configurationPackages ].
					self buildPackagesPaneOn: wrapPresenter 
						title: '*' 
						display: [ :repository | repository packages ] ] ].

	^ browser