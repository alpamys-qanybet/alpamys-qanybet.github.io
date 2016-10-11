# angular.module('tmg').controller 'MainCtrl', ['$scope', '$rootScope', '$state', '$cookies', '$locales', '$interval', ($scope, $rootScope, $state, $cookies, $locales, $interval)->
angular.module('tmg').controller 'MainCtrl', ['$scope', '$rootScope', '$state', '$cookies', '$interval', ($scope, $rootScope, $state, $cookies, $interval)->
# angular.module('tmg').controller 'MainCtrl', ['$scope', '$rootScope', '$interval', ($scope, $rootScope, $interval)->
	console.log 'MainCtrl'
	$rootScope.covering = true
	$rootScope.showNav = true

	# $locales.changeLang $locales.current()

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
		name: 'schedule'
		url: 'schedule'
		icon: 'fa-calendar'
	,
		name: 'structure'
		url: 'structure'
		icon: 'fa-sitemap'
	,
		name: 'service'
		url: 'service'
		icon: 'fa-briefcase'
	,
		name: 'support'
		url: 'support'
		icon: 'fa-lg fa-comments-o'
	,
		name: 'questionary'
		url: 'questionary'
		icon: 'fa-check-square-o'
	,
		name: 'about'
		url: 'about'
		icon: 'fa-institution'
	,
		name: 'rpn'
		url: 'rpn'
		icon: 'fa-hashtag'
	,
		name: 'gallery'
		url: 'gallery'
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
