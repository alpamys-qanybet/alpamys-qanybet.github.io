angular.module('tmg')
	.filter('decima', function() {
		return function(number) {
			return (number < 10) ? '0'+number : number;
		};
	});	