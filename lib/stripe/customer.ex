defmodule Stripe.Customer do
  use Okapi.Resource

  @prefix "/customers"

  get :retrieve, "/{id}"
  get :list
end