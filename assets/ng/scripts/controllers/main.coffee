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
	# 	name: 'project'
	# 	url: 'project'
	# 	icon: 'fa-calendar'
	# ,
		name: 'blog'
		url: 'blog'
		icon: 'fa-institution'
	,
		name: 'contact'
		url: 'contact'
		icon: 'fa-image'
	]

	$scope.skills = [
		name: 'Design Patterns'
		progress: 35
	,
		name: 'Java SE, EE6, EE7'
		progress: 90
	,
		name: 'JBoss, GlassFish, Tomcat'
		progress: 75
	,
		name: 'JAAS'
		progress: 95
	,
		name: 'ORM(Hibernate, JPA)'
		progress: 80
	,
		name: 'REST-API, JAX-WS, SOAP-UI'
		progress: 75
	,
		name: 'Java Websocket'
		progress: 85
	,
		name: 'jBPM'
		progress: 35
	,
		name: 'Seam'
		progress: 90
	,
		name: 'Spring'
		progress: 30
	,
		name: 'Play'
		progress: 40
	,
		name: 'Git'
		progress: 97
	,
		name: 'Maven, Gradle'
		progress: 60
	,
		name: 'HornetQ, Qpidd, JMS'
		progress: 90
	,
		name: 'PostgreSQL, MySQL, Oracle'
		progress: 70
	,
		name: 'Linux, Remote Server Administration, Bash Scripting'
		progress: 40
	,
		name: 'Eclipse, IntellijIDEA'
		progress: 60
	,
		name: 'vim, Sublime, Atom'
		progress: 40
	,
		name: 'HTML, CSS, JS'
		progress: 90
	,
		name: 'jQuery, AJAX'
		progress: 80
	,
		name: 'CoffeeScript'
		progress: 80
	,
		name: 'Material Design, Bootstrap'
		progress: 90
	,
		name: 'Angular JS 1.x'
		progress: 85
	,
		name: 'Angular Websocket'
		progress: 75
	,
		name: 'RestAngular'
		progress: 85
	,
		name: 'Bower'
		progress: 35
	,
		name: 'Grunt'
		progress: 25
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
