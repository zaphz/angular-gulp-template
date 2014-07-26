angular.module("SampleApp").controller "paymentController", [
  '$scope'
  '$http'
  'Restangular'
  ($scope, $http, Restangular) ->

    $scope.selectedCardName = 'visa'
    $scope.selectedCard = (cardName) ->
      $scope.selectedCardName = cardName

]
