defmodule Stripe do
  use Okapi

  config :api_key, "sk_XPymrxOPupS9EZasz3Aso04w4KAM4"
  config :base_url, "https://api.stripe.com/v1"

  def auth(request) do
    Okapi.add_header(request.headers, "Authorization", "Bearer #{Stripe.api_key}")
      |> request.headers
  end
end
