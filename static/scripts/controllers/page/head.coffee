angular.module('tmg').controller 'HeadCtrl', ['$scope', '$rootScope', '$cookies', '$state', ($scope, $rootScope, $cookies, $state)->
	console.log 'HeadCtrl'
	$rootScope.current = 'head'
	$rootScope.showNav = true
]