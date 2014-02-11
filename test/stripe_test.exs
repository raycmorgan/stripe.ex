defmodule StripeTest.Charge do
  use ExUnit.Case

  setup do
    Stripe.start
  end

  test "can fetch a charge" do
    charge = Stripe.Charge.retrieve!(id: "ch_1tEa2FtVyao2Yb")
    assert charge["id"] == "ch_1tEa2FtVyao2Yb"
  end
end
