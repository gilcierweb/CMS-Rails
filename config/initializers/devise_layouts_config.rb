# Specify the layout file that should be used for each Devise controller
Rails.application.config.to_prepare do
  Devise::SessionsController.layout       "auth_layout"
  Devise::RegistrationsController.layout  "auth_layout"
  Devise::ConfirmationsController.layout  "auth_layout"
  Devise::UnlocksController.layout        "auth_layout"
  Devise::PasswordsController.layout      "auth_layout"
end