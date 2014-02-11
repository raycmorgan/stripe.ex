defmodule Stripe.Customer do
  use Okapi.Resource, api_module: Stripe

  @prefix "/customers"

  get :retrieve, "/{id}"
  get :list
end