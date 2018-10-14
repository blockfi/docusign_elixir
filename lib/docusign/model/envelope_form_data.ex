# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.EnvelopeFormData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :emailSubject,
    :envelopeId,
    :formData,
    :recipientFormData,
    :sentDateTime,
    :status
  ]

  @type t :: %__MODULE__{
          :emailSubject => String.t(),
          :envelopeId => String.t(),
          :formData => [NameValue],
          :recipientFormData => [RecipientFormData],
          :sentDateTime => String.t(),
          :status => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopeFormData do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:formData, :list, DocuSign.Model.NameValue, options)
    |> deserialize(:recipientFormData, :list, DocuSign.Model.RecipientFormData, options)
  end
end
