// Generated by CoffeeScript 1.4.0
(function() {

  angular.module('tmg').controller('BlogCtrl', [
    '$scope', '$rootScope', '$cookies', '$state', function($scope, $rootScope, $cookies, $state) {
      var height;
      console.log('BlogCtrl');
      $rootScope.current = 'contact';
      $rootScope.showNav = true;
      $rootScope.random = Math.floor(Math.random() * $rootScope.randomRange);
      $('.button-collapse').sideNav('hide');
      jQuery(window).on('load', function() {
        return jQuery('.blog').masonry({
          itemSelector: '.blog-post',
          columnWidth: '.blog-post',
          percentPosition: true
        });
      });
      height = jQuery('.caption').height();
      if (jQuery(window).width()) {
        jQuery('#featured').css('height', height);
        return jQuery('#featured img').css('height', height);
      }
    }
  ]);

}).call(this);
