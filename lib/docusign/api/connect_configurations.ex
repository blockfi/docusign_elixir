# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.ConnectConfigurations do
  @moduledoc """
  API calls for all endpoints tagged `ConnectConfigurations`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Deletes the specified connect configuration.
  Deletes the specified DocuSign Connect configuration.  ###### Note: Connect must be enabled for your account to use this function.    

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - connect_id (String.t): The ID of the custom Connect configuration being accessed.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec connect_delete_connect_config(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def connect_delete_connect_config(connection, account_id, connect_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/connect/#{connect_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get information on a Connect Configuration
  Retrieves the information for the specified DocuSign Connect configuration.  ###### Note: Connect must be enabled for your account to use this function. 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - connect_id (String.t): The ID of the custom Connect configuration being accessed.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.ConnectConfigResults{}} on success
  {:error, info} on failure
  """
  @spec connect_get_connect_config(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.ConnectConfigResults.t()} | {:error, Tesla.Env.t()}
  def connect_get_connect_config(connection, account_id, connect_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/connect/#{connect_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ConnectConfigResults{})
  end

  @doc """
  Get Connect Configuration Information
  Retrieves all the DocuSign Custom Connect definitions for the specified account.  ###### Note: Connect must be enabled for your account to use this function. This does not retrieve information for Connect configurations for Box, eOriginal, or Salesforce.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.ConnectConfigResults{}} on success
  {:error, info} on failure
  """
  @spec connect_get_connect_configs(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.ConnectConfigResults.t()} | {:error, Tesla.Env.t()}
  def connect_get_connect_configs(connection, account_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/connect")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ConnectConfigResults{})
  end

  @doc """
  Returns users from the configured Connect service.
  Returns users from the configured Connect service.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - connect_id (String.t): The ID of the custom Connect configuration being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :count (String.t): Optional. Number of items to return. 
    - :email_substring (String.t): Filters the returned user records by the email address or a sub-string of email address.
    - :list_included_users (String.t): 
    - :start_position (String.t): The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image.
    - :status (String.t): Filters the results by user status. You can specify a comma-separated list of the following statuses:  * ActivationRequired  * ActivationSent  * Active * Closed  * Disabled 
    - :user_name_substring (String.t): Filters the user records returned by the user name or a sub-string of user name.

  ## Returns

  {:ok, %DocuSign.Model.IntegratedUserInfoList{}} on success
  {:error, info} on failure
  """
  @spec connect_get_connect_users(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.IntegratedUserInfoList.t()} | {:error, Tesla.Env.t()}
  def connect_get_connect_users(connection, account_id, connect_id, opts \\ []) do
    optional_params = %{
      count: :query,
      email_substring: :query,
      list_included_users: :query,
      start_position: :query,
      status: :query,
      user_name_substring: :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/connect/#{connect_id}/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.IntegratedUserInfoList{})
  end

  @doc """
  Creates a connect configuration for the specified account.
  Creates a DocuSign Custom Connect definition for your account. DocuSign Connect enables the sending of real-time data updates to external applications. These updates are generated by user transactions as the envelope progresses through actions to completion. The Connect Service provides updated information about the status of these transactions and returns updates that include the actual content of document form fields. Be aware that, these updates might or might not include the document itself. For more information about Connect, see the [ML:DocuSign Connect Service Guide].  ###### Note: Connect must be enabled for your account to use this function. This cannot be used to set up Connect configurations for Salesforce or eOriginal.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :connect_configurations (ConnectConfigurations): 

  ## Returns

  {:ok, %DocuSign.Model.ConnectConfigurations{}} on success
  {:error, info} on failure
  """
  @spec connect_post_connect_configuration(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.ConnectConfigurations.t()} | {:error, Tesla.Env.t()}
  def connect_post_connect_configuration(connection, account_id, opts \\ []) do
    optional_params = %{
      ConnectConfigurations: :body
    }

    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/connect")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ConnectConfigurations{})
  end

  @doc """
  Updates a specified Connect configuration.
  Updates the specified DocuSign Connect configuration in your account.  ###### Note: Connect must be enabled for your account to use this function. This cannot be used to update Connect configurations for Box, eOriginal, or Salesforce.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :connect_configurations (ConnectConfigurations): 

  ## Returns

  {:ok, %DocuSign.Model.ConnectConfigurations{}} on success
  {:error, info} on failure
  """
  @spec connect_put_connect_configuration(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, DocuSign.Model.ConnectConfigurations.t()} | {:error, Tesla.Env.t()}
  def connect_put_connect_configuration(connection, account_id, opts \\ []) do
    optional_params = %{
      ConnectConfigurations: :body
    }

    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/connect")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ConnectConfigurations{})
  end
end
