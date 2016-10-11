angular.module('tmg').controller 'MainCtrl', ['$scope', '$rootScope', '$state', '$cookies', '$locales', '$interval', ($scope, $rootScope, $state, $cookies, $locales, $interval)->
	console.log 'MainCtrl'
	$rootScope.covering = true
	$rootScope.showNav = true

	$locales.changeLang $locales.current()

	$scope.flags = [
		code: 'ru'
		name: 'russia'
	,
		code: 'en'
		name: 'united_kingdom'
	,
		code: 'kk'
		name: 'kazakhstan'
	]

	$scope.navs = [
		name: 'home'
		url: 'home'
		icon: 'fa-heartbeat'
	,
		name: 'project'
		url: 'project'
		icon: 'fa-calendar'
	,
		name: 'blog'
		url: 'blog'
		icon: 'fa-institution'
	,
		name: 'contact'
		url: 'contact'
		icon: 'fa-image'
	]

	$scope.clock = new Date()

	$interval ->
		$scope.clock = Date.now()
	,
		1000

	# current url
	$rootScope.currentUrl = ->
		document.URL

	$state.transitionTo 'home'
]
