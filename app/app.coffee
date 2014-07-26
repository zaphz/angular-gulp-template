angular.module("SampleApp", [
  "ngResource"
  "restangular"
  "ui.bootstrap"
  "ui.router"
  "pascalprecht.translate"
  "ngAnimate"
]).run ($rootScope, Restangular, $state, $stateParams) ->

  # adds some basic utilities to the $rootScope for debugging purposes
  $rootScope.log = (thing) ->
    console.log thing

  $rootScope.alert = (thing) ->
    alert thing

  # To change the class on the navbar, need these variables available on root scope
  $rootScope.$state = $state
  $rootScope.$stateParams = $stateParams

# NOTE: URLS are of the form http://localhost:8000/#/something
angular.module("SampleApp").config ($stateProvider, $urlRouterProvider, $translateProvider, RestangularProvider) ->

  # TODO: At some point, configure translationProvider and test.

  # For any unmatched url, send to /route1
  $urlRouterProvider.otherwise "/order"


  # TODO: Can gulp glob processing handle multiple periods in filenames?
  # This would allow templates that are named like nested routes, instead
  # of using `-` like had to do with linemanJS
  $stateProvider
    .state 'order',
      url: "/order"
      templateUrl: "order-app/order/order-main.html"
      controller: "orderController"

    .state 'payment',
      url: '/payment'
      templateUrl: "order-app/payment/payment.html"
      controller: "paymentController"

  return
