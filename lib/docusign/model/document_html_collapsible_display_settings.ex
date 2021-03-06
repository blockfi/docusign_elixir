# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.DocumentHtmlCollapsibleDisplaySettings do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :arrowClosed,
    :arrowColor,
    :arrowLocation,
    :arrowOpen,
    :arrowSize,
    :arrowStyle,
    :containerStyle,
    :labelStyle,
    :onlyArrowIsClickable,
    :outerLabelAndArrowStyle
  ]

  @type t :: %__MODULE__{
          :arrowClosed => String.t(),
          :arrowColor => String.t(),
          :arrowLocation => String.t(),
          :arrowOpen => String.t(),
          :arrowSize => String.t(),
          :arrowStyle => String.t(),
          :containerStyle => String.t(),
          :labelStyle => String.t(),
          :onlyArrowIsClickable => boolean(),
          :outerLabelAndArrowStyle => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.DocumentHtmlCollapsibleDisplaySettings do
  def decode(value, _options) do
    value
  end
end
