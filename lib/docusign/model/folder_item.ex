# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.FolderItem do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :completedDateTime,
    :createdDateTime,
    :customFields,
    :description,
    :envelopeId,
    :envelopeUri,
    :is21CFRPart11,
    :isSignatureProviderEnvelope,
    :lastModified,
    :name,
    :ownerName,
    :pageCount,
    :password,
    :senderEmail,
    :senderName,
    :sentDateTime,
    :shared,
    :status,
    :subject,
    :templateId,
    :uri
  ]

  @type t :: %__MODULE__{
          :completedDateTime => String.t(),
          :createdDateTime => String.t(),
          :customFields => [CustomFieldV2],
          :description => String.t(),
          :envelopeId => String.t(),
          :envelopeUri => String.t(),
          :is21CFRPart11 => String.t(),
          :isSignatureProviderEnvelope => String.t(),
          :lastModified => String.t(),
          :name => String.t(),
          :ownerName => String.t(),
          :pageCount => integer(),
          :password => String.t(),
          :senderEmail => String.t(),
          :senderName => String.t(),
          :sentDateTime => String.t(),
          :shared => String.t(),
          :status => String.t(),
          :subject => String.t(),
          :templateId => String.t(),
          :uri => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.FolderItem do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:customFields, :list, DocuSign.Model.CustomFieldV2, options)
  end
end