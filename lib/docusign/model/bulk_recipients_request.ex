# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.BulkRecipientsRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :bulkRecipients
  ]

  @type t :: %__MODULE__{
          :bulkRecipients => [BulkRecipient]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BulkRecipientsRequest do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:bulkRecipients, :list, DocuSign.Model.BulkRecipient, options)
  end
end