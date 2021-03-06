# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.Authentication do
  @moduledoc """
  API calls for all endpoints tagged `Authentication`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Gets login information for a specified user.
  Retrieves account information for the authenticated user. Since the API is sessionless, this method does not actually log you in.  Instead, the method returns information about the account or accounts that the authenticated user has access to.  ###### Important: This method must only be used for the [Legacy Header Authentication][legacyheader] flow. Use the [&#x60;AccountServer: userInfo&#x60; method](../../../../guides/authentication/userinfo.html) for the OAuth2 Authentiction Code and Implicit Grant flows.  Each account has a &#x60;baseUrl&#x60; property, returned in the response. Use this &#x60;baseUrl&#x60; in all future API calls as the base of the request URL.  For each account, the &#x60;baseUrl&#x60; property includes the DocuSign server, the API version, and the &#x60;accountId&#x60; property.  It is not uncommon for an authenticated user to have access to more than one account (and more than one &#x60;baseUrl&#x60;). Depending on your integration&#39;s use case, your integration may choose to:  * Use the account whose &#x60;isDefault&#x60; field is &#x60;true&#x60;. * List the available accounts and ask the user to choose one. * Enable the system administrator to set the account that should be used by your integration.  If this method returns successfully, then you also know that the user has successfully authenticated with the DocuSign Signature platform.   [legacyheader]: ../../../../guides/authentication/legacy [userinfo]: ../../../../guides/authentication/user-info-endpoints [authcode]: ../../../../guides/authentication/oauth2-code-grant [implicit]: ../../../../guides/authentication/oauth2-implicit 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :api_password (String.t): Reserved for DocuSign. 
    - :embed_account_id_guid (String.t): 
    - :include_account_id_guid (String.t): When set to **true**, shows the account ID GUID in the response.
    - :login_settings (String.t): Determines whether login settings are returned in the response.  Valid Values:  * all -  All the login settings are returned.  * none - no login settings are returned.

  ## Returns

  {:ok, %DocuSign.Model.Authentication{}} on success
  {:error, info} on failure
  """
  @spec login_information_get_login_information(Tesla.Env.client(), keyword()) ::
          {:ok, DocuSign.Model.Authentication.t()} | {:error, Tesla.Env.t()}
  def login_information_get_login_information(connection, opts \\ []) do
    optional_params = %{
      api_password: :query,
      embed_account_id_guid: :query,
      include_account_id_guid: :query,
      login_settings: :query
    }

    %{}
    |> method(:get)
    |> url("/v2/login_information")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Authentication{})
  end

  @doc """
  Updates the password for a specified user.
  Updates the password for a specified user.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - login_part (String.t): Currently, only the value **password** is supported.
  - opts (KeywordList): [optional] Optional parameters
    - :user_password_information (UserPasswordInformation): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec login_information_put_login_information(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def login_information_put_login_information(connection, login_part, opts \\ []) do
    optional_params = %{
      userPasswordInformation: :body
    }

    %{}
    |> method(:put)
    |> url("/v2/login_information/#{login_part}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  **Deprecated** Revokes an authorization token. 
  **Deprecated**  Revokes an OAuth2 authorization server token. After the revocation is complete, a caller must re-authenticate to restore access. 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec o_auth2_post_revoke(Tesla.Env.client(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def o_auth2_post_revoke(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/v2/oauth2/revoke")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  **Deprecated** Creates an authorization token. 
  **Deprecated**  Creates an OAuth2 authorization server token endpoint. 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.OauthAccess{}} on success
  {:error, info} on failure
  """
  @spec o_auth2_post_token(Tesla.Env.client(), keyword()) ::
          {:ok, DocuSign.Model.OauthAccess.t()} | {:error, Tesla.Env.t()}
  def o_auth2_post_token(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/v2/oauth2/token")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.OauthAccess{})
  end
end
