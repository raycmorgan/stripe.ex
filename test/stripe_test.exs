defmodule StripeTest.Charge do
  use ExUnit.Case

  setup do
    Stripe.start
  end

  test "can fetch a charge" do
    charge = Stripe.Charge.retrieve!(id: "ch_1tEa2FtVyao2Yb")
    assert charge["id"] == "ch_1tEa2FtVyao2Yb"
  end

  test "can fetch a set of cards" do
    assert {:ok, {200, _, _}} = Stripe.Charge.list
  end

  test "can create a charge" do
    result = Stripe.Charge.create!(
      amount: 1000,
      currency: "usd",
      "card[number]": "4242424242424242",
      "card[exp_month]": 2,
      "card[exp_year]": 2020
    )

    result = Stripe.Charge.create!(
      amount: 1000,
      currency: "usd",

      card: [
        number: "4242424242424242",
        exp_month: 2,
        exp_year: 2020
      ]
    )
  end
end
