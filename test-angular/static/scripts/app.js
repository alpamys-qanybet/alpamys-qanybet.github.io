/* 'use strict'; */
/* global Highcharts */

var domainUrl = window.location.origin;
// var domainUrl = 'http://localhost/github/alpamys-qanybet.github.io';
console.log(domainUrl);

angular.module('jm.i18next').config(['$i18nextProvider', function($i18nextProvider) {
	$i18nextProvider.options = {
		//lng: 'kk',
		preload: ['ru', 'en'],
		fallbackLng: false,
		useCookie: true,
		useLocalStorage: false,
		resGetPath: domainUrl+'/static/locales/__lng__/__ns__.json'
	};
}]);

angular.module('tmg', ['ui.router', 'restangular', 'ngCookies', 'ngSanitize', 'jm.i18next'])
// angular.module('tmg', []);
// angular.module('tmg', ['ui.router', 'restangular', 'ngCookies', 'ngSanitize'])
	.config(['RestangularProvider', function(RestangularProvider) {
		RestangularProvider.setBaseUrl(domainUrl+'/rest/');
		RestangularProvider.setDefaultHeaders( {'content-type': 'application/json; charset=utf-8'});
		RestangularProvider.setRequestInterceptor(function(elem, operation) {
			if (operation === "remove") {
				return undefined;
			}
			return elem;
		});
	}])
	.config(['$stateProvider', function($stateProvider) {
		$stateProvider
		.state('home', {
			url: '/home',
			templateUrl: 'static/views/home.html',
			controller: 'HomeCtrl'
		})
		.state('head', {
			url: '/head',
			templateUrl: 'static/views/head.html',
			controller: 'HeadCtrl'
		})
		.state('about', {
			url: '/about',
			templateUrl: 'static/views/about.html',
			controller: 'AboutCtrl'
		})
		.state('faq-menu', {
			url: '/faq-menu',
			templateUrl: 'static/views/faq.menu.html',
			controller: 'FaqMenuCtrl'
		})
		.state('faq', {
			url: '/faq/:question',
			templateUrl: 'static/views/faq.html',
			controller: 'FaqCtrl'
		})
		.state('support', {
			url: '/support',
			templateUrl: 'static/views/support.html',
			controller: 'SupportCtrl'
		})
		.state('schedule', {
			url: '/schedule',
			templateUrl: 'static/views/schedule.html',
			controller: 'ScheduleCtrl'
		})
		.state('gallery', {
			url: '/gallery',
			templateUrl: 'static/views/gallery.html',
			controller: 'GalleryCtrl'
		})
		.state('questionary', {
			url: '/questionary',
			templateUrl: 'static/views/questionary.html',
			controller: 'QuestionaryCtrl'
		})
		.state('scheme', {
			url: '/scheme',
			templateUrl: 'static/views/scheme.html',
			controller: 'SchemeCtrl'
		})
		.state('service', {
			url: '/service',
			templateUrl: 'static/views/service.html',
			controller: 'ServiceCtrl'
		})
		.state('structure', {
			url: '/structure',
			templateUrl: 'static/views/structure.html',
			controller: 'StructureCtrl'
		})
		.state('contact', {
			url: '/contact',
			templateUrl: 'static/views/contact.html',
			controller: 'ContactCtrl'
		});
	}])
	// .filter('truncate', function () {
  //       return function (text, length, end) {
  //           if (isNaN(length))
  //               length = 10;
	//
  //           if (end === undefined)
  //               end = "...";
	//
  //           if (text.length <= length || text.length - end.length <= length) {
  //               return text;
  //           }
  //           else {
  //               return String(text).substring(0, length-end.length) + end;
  //           }
	//
  //       };
  //   })
	.run(['$rootScope', '$state', '$stateParams', '$cookies', function($rootScope, $state, $stateParams, $cookies) {
		$rootScope.$state = $state;
		$rootScope.$stateParams = $stateParams;
		$rootScope.$cookies = $cookies;

		$rootScope.covering = true;
	}]);
