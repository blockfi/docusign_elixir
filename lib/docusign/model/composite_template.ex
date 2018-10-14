# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.CompositeTemplate do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :compositeTemplateId,
    :document,
    :inlineTemplates,
    :pdfMetaDataTemplateSequence,
    :serverTemplates
  ]

  @type t :: %__MODULE__{
          :compositeTemplateId => String.t(),
          :document => Document,
          :inlineTemplates => [InlineTemplate],
          :pdfMetaDataTemplateSequence => String.t(),
          :serverTemplates => [ServerTemplate]
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.CompositeTemplate do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:document, :struct, DocuSign.Model.Document, options)
    |> deserialize(:inlineTemplates, :list, DocuSign.Model.InlineTemplate, options)
    |> deserialize(:serverTemplates, :list, DocuSign.Model.ServerTemplate, options)
  end
end
