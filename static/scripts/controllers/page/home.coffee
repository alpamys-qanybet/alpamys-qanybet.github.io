# angular.module('tmg').controller 'HomeCtrl', ['$scope', '$rootScope', '$cookies', '$state', '$locales', ($scope, $rootScope, $cookies, $state, $locales)->
angular.module('tmg').controller 'HomeCtrl', ['$scope', '$rootScope', '$cookies', '$state', ($scope, $rootScope, $cookies, $state)->
	console.log 'HomeCtrl'
	$rootScope.current = 'home'
	$rootScope.showNav = false

	# $locales.changeLang 'kk'

	$scope.menu = [
		code: 'schedule'
		url: 'schedule'
		img: 'static/img/home/2.jpg'
	,
		code: 'structure'
		url: 'structure'
		img: 'static/img/home/3.jpg'
	,
		code: 'service'
		url: 'service'
		img: 'static/img/home/4.jpg'
	# ,
		# code: 'head'
		# img: 'static/img/home/1.jpg'
	,
		# code: 'faq'
		# url: 'faq-menu'
		# img: 'static/img/home/1.jpg'
	# ,
		code: 'support'
		url: 'support'
		img: 'static/img/home/1.jpg'
	,
		code: 'questionary'
		url: 'questionary'
		img: 'static/img/home/5.jpg'
	,
		code: 'about'
		url: 'about'
		img: 'static/img/home/7.jpg'
	,
		code: 'gallery'
		url: 'gallery'
		img: 'static/img/home/6.jpg'
	,
		code: 'scheme'
		url: 'scheme'
		img: 'static/img/home/9.jpg'
	,
		code: 'rpn'
		url: 'rpn'
		img: 'static/img/home/8.jpg'
	# ,
		# code: 'contact'
		# img: 'static/img/home/5.jpg'
	]
]
