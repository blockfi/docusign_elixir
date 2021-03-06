# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ErrorDetails do
  @moduledoc """
  This object describes errors that occur. It is only valid for responses, and ignored in requests.
  """

  @derive [Poison.Encoder]
  defstruct [
    :errorCode,
    :message
  ]

  @type t :: %__MODULE__{
          :errorCode => String.t(),
          :message => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ErrorDetails do
  def decode(value, _options) do
    value
  end
end
