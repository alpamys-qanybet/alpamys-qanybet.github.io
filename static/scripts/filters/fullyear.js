angular.module('tmg')
	.filter('fullyear', function() {
		return function(year, delim) {
			return year + ( delim ? delim: '-' ) + (Number(year) + 1);
		};
	});