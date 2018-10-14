# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.AccountConsumerDisclosures do
  @moduledoc """
  API calls for all endpoints tagged `AccountConsumerDisclosures`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Gets the Electronic Record and Signature Disclosure for the account.
  Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, associated with the account. You can use an optional query string to set the language for the disclosure.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :lang_code (String.t): Specifies the language used in the response. The supported languages, with the language value shown in parenthesis, are: Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk), and Vietnamese (vi).  Additionally, the value can be set to &#x60;browser&#x60; to automatically detect the browser language being used by the viewer and display the disclosure in that language.  

  ## Returns

  {:ok, %DocuSign.Model.AccountConsumerDisclosures{}} on success
  {:error, info} on failure
  """
  @spec consumer_disclosure_get_consumer_disclosure(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.AccountConsumerDisclosures.t()} | {:error, Tesla.Env.t()}
  def consumer_disclosure_get_consumer_disclosure(connection, account_id, opts \\ []) do
    optional_params = %{
      langCode: :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/consumer_disclosure")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.AccountConsumerDisclosures{})
  end

  @doc """
  Gets the Electronic Record and Signature Disclosure.
  Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, for the requested envelope recipient. This might be different than the current account disclosure depending on account settings, such as branding, and when the account disclosure was last updated. An optional query string can be included to return the language for the disclosure.  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - lang_code (String.t): The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to \&quot;browser\&quot; to automatically detect the browser language being used by the viewer and display the disclosure in that language.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.AccountConsumerDisclosures{}} on success
  {:error, info} on failure
  """
  @spec consumer_disclosure_get_consumer_disclosure_lang_code(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.AccountConsumerDisclosures.t()} | {:error, Tesla.Env.t()}
  def consumer_disclosure_get_consumer_disclosure_lang_code(
        connection,
        account_id,
        lang_code,
        _opts \\ []
      ) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/consumer_disclosure/#{lang_code}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.AccountConsumerDisclosures{})
  end

  @doc """
  Update Consumer Disclosure.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - lang_code (String.t): The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to \&quot;browser\&quot; to automatically detect the browser language being used by the viewer and display the disclosure in that language.
  - opts (KeywordList): [optional] Optional parameters
    - :include_metadata (String.t): Reserved for DocuSign. 
    - :envelope_consumer_disclosures (EnvelopeConsumerDisclosures): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeConsumerDisclosures{}} on success
  {:error, info} on failure
  """
  @spec consumer_disclosure_put_consumer_disclosure(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.EnvelopeConsumerDisclosures.t()} | {:error, Tesla.Env.t()}
  def consumer_disclosure_put_consumer_disclosure(connection, account_id, lang_code, opts \\ []) do
    optional_params = %{
      include_metadata: :query,
      EnvelopeConsumerDisclosures: :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/consumer_disclosure/#{lang_code}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeConsumerDisclosures{})
  end
end
