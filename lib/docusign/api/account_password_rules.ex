# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.AccountPasswordRules do
  @moduledoc """
  API calls for all endpoints tagged `AccountPasswordRules`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Get the password rules


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.AccountPasswordRules{}} on success
  {:error, info} on failure
  """
  @spec account_password_rules_get_account_password_rules(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.AccountPasswordRules.t()} | {:error, Tesla.Env.t()}
  def account_password_rules_get_account_password_rules(connection, account_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/settings/password_rules")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.AccountPasswordRules{})
  end

  @doc """
  Update the password rules


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :account_password_rules (AccountPasswordRules): 

  ## Returns

  {:ok, %DocuSign.Model.AccountPasswordRules{}} on success
  {:error, info} on failure
  """
  @spec account_password_rules_put_account_password_rules(
          Tesla.Env.client(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.AccountPasswordRules.t()} | {:error, Tesla.Env.t()}
  def account_password_rules_put_account_password_rules(connection, account_id, opts \\ []) do
    optional_params = %{
      AccountPasswordRules: :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/settings/password_rules")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.AccountPasswordRules{})
  end

  @doc """
  Get membership account password rules


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.UserPasswordRules{}} on success
  {:error, info} on failure
  """
  @spec password_rules_get_password_rules(Tesla.Env.client(), keyword()) ::
          {:ok, DocuSign.Model.UserPasswordRules.t()} | {:error, Tesla.Env.t()}
  def password_rules_get_password_rules(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/current_user/password_rules")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.UserPasswordRules{})
  end
end
