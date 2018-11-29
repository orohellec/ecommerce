Rails.configuration.stripe = {
  :access_key_id => Rails.application.credentials.stripe[:access_key_id],
  :secret_access_key => Rails.application.credentials.stripe[:secret_access_key]
}
Stripe.api_key = Rails.configuration.stripe[:secret_access_key]
