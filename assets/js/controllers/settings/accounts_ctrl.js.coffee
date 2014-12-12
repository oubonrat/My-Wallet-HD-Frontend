@SettingsAccountsCtrl = ($scope, Wallet, $modal) ->
  $scope.accounts = Wallet.accounts
  
  $scope.newAccount = () ->
    Wallet.clearAlerts()
    modalInstance = $modal.open(
      templateUrl: "partials/account-form"
      controller: AccountFormCtrl
      resolve:
        account: -> undefined
      windowClass: "blockchain-modal"
    )
    
  $scope.editAccount = (account) ->
    Wallet.clearAlerts()
    modalInstance = $modal.open(
      templateUrl: "partials/account-form"
      controller: AccountFormCtrl
      resolve:
        account: -> account
      windowClass: "blockchain-modal"
    )