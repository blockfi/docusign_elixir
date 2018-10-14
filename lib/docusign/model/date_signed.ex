# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.DateSigned do
  @moduledoc """
  A tab that displays the date that the recipient signed the document. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :anchorCaseSensitive,
    :anchorHorizontalAlignment,
    :anchorIgnoreIfNotPresent,
    :anchorMatchWholeWord,
    :anchorString,
    :anchorUnits,
    :anchorXOffset,
    :anchorYOffset,
    :bold,
    :conditionalParentLabel,
    :conditionalParentValue,
    :customTabId,
    :documentId,
    :errorDetails,
    :font,
    :fontColor,
    :fontSize,
    :italic,
    :mergeField,
    :name,
    :pageNumber,
    :recipientId,
    :status,
    :tabId,
    :tabLabel,
    :tabOrder,
    :templateLocked,
    :templateRequired,
    :underline,
    :value,
    :xPosition,
    :yPosition
  ]

  @type t :: %__MODULE__{
          :anchorCaseSensitive => String.t(),
          :anchorHorizontalAlignment => String.t(),
          :anchorIgnoreIfNotPresent => String.t(),
          :anchorMatchWholeWord => String.t(),
          :anchorString => String.t(),
          :anchorUnits => String.t(),
          :anchorXOffset => String.t(),
          :anchorYOffset => String.t(),
          :bold => String.t(),
          :conditionalParentLabel => String.t(),
          :conditionalParentValue => String.t(),
          :customTabId => String.t(),
          :documentId => String.t(),
          :errorDetails => ErrorDetails,
          :font => String.t(),
          :fontColor => String.t(),
          :fontSize => String.t(),
          :italic => String.t(),
          :mergeField => MergeField,
          :name => String.t(),
          :pageNumber => String.t(),
          :recipientId => String.t(),
          :status => String.t(),
          :tabId => String.t(),
          :tabLabel => String.t(),
          :tabOrder => String.t(),
          :templateLocked => String.t(),
          :templateRequired => String.t(),
          :underline => String.t(),
          :value => String.t(),
          :xPosition => String.t(),
          :yPosition => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.DateSigned do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:mergeField, :struct, DocuSign.Model.MergeField, options)
  end
end
