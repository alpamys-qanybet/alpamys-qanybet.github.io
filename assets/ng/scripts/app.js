/* 'use strict'; */

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
		resGetPath: domainUrl+'/assets/ng/locales/__lng__/__ns__.json'
	};
}]);

angular.module('tmg', ['ui.router', 'restangular', 'ngCookies', 'ngSanitize', 'jm.i18next'])
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
			templateUrl: 'assets/ng/views/home.html',
			controller: 'HomeCtrl'
		})
		.state('project', {
			url: '/project',
			templateUrl: 'assets/ng/views/project.html',
			controller: 'ProjectCtrl'
		})
		.state('blog', {
			url: '/blog',
			templateUrl: 'assets/ng/views/blog.html',
			controller: 'BlogCtrl'
		})
		.state('contact', {
			url: '/contact',
			templateUrl: 'assets/ng/views/contact.html',
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
		$rootScope.randomRange = 3;
		$rootScope.random = Math.floor(Math.random() * $rootScope.randomRange);

		$rootScope.covering = true;
	}]);
