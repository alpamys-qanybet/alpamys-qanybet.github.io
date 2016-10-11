angular.module('tmg').controller 'AboutCtrl', ['$rootScope', ($rootScope)->
	$rootScope.current = 'about'
	$rootScope.showNav = true
]