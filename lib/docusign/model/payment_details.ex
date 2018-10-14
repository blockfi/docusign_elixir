# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.PaymentDetails do
  @moduledoc """
  When a formula tab has a &#x60;paymentDetails&#x60; property, the formula tab is a payment item. See [Requesting Payments Along with Signatures][paymentguide] in the DocuSign Support Center to learn more about payments.  [paymentguide]:     https://support.docusign.com/en/guides/requesting-payments-along-with-signatures 
  """

  @derive [Poison.Encoder]
  defstruct [
    :allowedPaymentMethods,
    :chargeId,
    :currencyCode,
    :gatewayAccountId,
    :gatewayDisplayName,
    :gatewayName,
    :lineItems,
    :status,
    :total
  ]

  @type t :: %__MODULE__{
          :allowedPaymentMethods => [String.t()],
          :chargeId => String.t(),
          :currencyCode => String.t(),
          :gatewayAccountId => String.t(),
          :gatewayDisplayName => String.t(),
          :gatewayName => String.t(),
          :lineItems => [PaymentLineItem],
          :status => String.t(),
          :total => Money
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.PaymentDetails do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:lineItems, :list, DocuSign.Model.PaymentLineItem, options)
    |> deserialize(:total, :struct, DocuSign.Model.Money, options)
  end
end