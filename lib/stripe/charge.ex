defmodule Stripe.Charge do
  use Okapi.Resource, api_module: Stripe

  @prefix "/charges"

  get :retrieve, "/{id}"
  get :list

  post :create
  post :update, "/{id}"

  post :capture, "/{id}/capture"
  post :refund,  "/{id}/refund"

  post :update_dispute, "/{id}/dispute"
  post :close_dispute,  "/{id}/dispute/close"

  # setMetadata, getMetadata
end