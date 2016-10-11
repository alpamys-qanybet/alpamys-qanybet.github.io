angular.module('tmg').controller 'ContactCtrl', ['$scope', '$rootScope', '$cookies', '$state', ($scope, $rootScope, $cookies, $state)->
	console.log 'ContactCtrl'
	$rootScope.current = 'contact'
	$rootScope.showNav = true

	$rootScope.random = Math.floor(Math.random() * $rootScope.randomRange)

	$('.button-collapse').sideNav('hide')
]
