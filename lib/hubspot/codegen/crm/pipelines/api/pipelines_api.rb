=begin
#CRM Pipelines

#Pipelines represent distinct stages in a workflow, like closing a deal or servicing a support ticket. These endpoints provide access to read and modify pipelines in HubSpot. Pipelines support `deals` and `tickets` object types.  ## Pipeline ID validation  When calling endpoints that take pipelineId as a parameter, that ID must correspond to an existing, un-archived pipeline. Otherwise the request will fail with a `404 Not Found` response.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Client
    module Crm
      module Pipelines
        module Api
          class PipelinesApi
            attr_accessor :api_client

            def initialize(api_client = ApiClient.default)
              @api_client = api_client
            end
            # Archive a pipeline
            # Archive the pipeline identified by `{pipelineId}`.
            # @param object_type [String] 
            # @param pipeline_id [String] 
            # @param [Hash] opts the optional parameters
            # @return [nil]
            def archive(object_type, pipeline_id, opts = {})
              archive_with_http_info(object_type, pipeline_id, opts)
              nil
            end

            # Archive a pipeline
            # Archive the pipeline identified by &#x60;{pipelineId}&#x60;.
            # @param object_type [String] 
            # @param pipeline_id [String] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
            def archive_with_http_info(object_type, pipeline_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: PipelinesApi.archive ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling PipelinesApi.archive"
              end
              # verify the required parameter 'pipeline_id' is set
              if @api_client.config.client_side_validation && pipeline_id.nil?
                fail ArgumentError, "Missing the required parameter 'pipeline_id' when calling PipelinesApi.archive"
              end
              # resource path
              local_var_path = '/{objectType}/{pipelineId}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'pipelineId' + '}', CGI.escape(pipeline_id.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: PipelinesApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Create a pipeline
            # Create a new pipeline with the provided property values. The entire pipeline object, including its unique ID, will be returned in the response.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PipelineInput] :body 
            # @return [Pipeline]
            def create(object_type, opts = {})
              data, _status_code, _headers = create_with_http_info(object_type, opts)
              data
            end

            # Create a pipeline
            # Create a new pipeline with the provided property values. The entire pipeline object, including its unique ID, will be returned in the response.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PipelineInput] :body 
            # @return [Array<(Pipeline, Integer, Hash)>] Pipeline data, response status code and response headers
            def create_with_http_info(object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: PipelinesApi.create ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling PipelinesApi.create"
              end
              # resource path
              local_var_path = '/{objectType}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

              # return_type
              return_type = opts[:return_type] || 'Pipeline' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: PipelinesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Return a pipeline by ID
            # Return a single pipeline object identified by its unique `{pipelineId}`.
            # @param object_type [String] 
            # @param pipeline_id [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
            # @return [Pipeline]
            def get_by_id(object_type, pipeline_id, opts = {})
              data, _status_code, _headers = get_by_id_with_http_info(object_type, pipeline_id, opts)
              data
            end

            # Return a pipeline by ID
            # Return a single pipeline object identified by its unique &#x60;{pipelineId}&#x60;.
            # @param object_type [String] 
            # @param pipeline_id [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived.
            # @return [Array<(Pipeline, Integer, Hash)>] Pipeline data, response status code and response headers
            def get_by_id_with_http_info(object_type, pipeline_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: PipelinesApi.get_by_id ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling PipelinesApi.get_by_id"
              end
              # verify the required parameter 'pipeline_id' is set
              if @api_client.config.client_side_validation && pipeline_id.nil?
                fail ArgumentError, "Missing the required parameter 'pipeline_id' when calling PipelinesApi.get_by_id"
              end
              # resource path
              local_var_path = '/{objectType}/{pipelineId}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'pipelineId' + '}', CGI.escape(pipeline_id.to_s))

              # query parameters
              query_params = opts[:query_params] || {}
              query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] || 'Pipeline' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: PipelinesApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Retrieve all pipelines
            # Return all pipelines for the object type specified by `{objectType}`.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
            # @return [CollectionResponsePipeline]
            def get_page(object_type, opts = {})
              data, _status_code, _headers = get_page_with_http_info(object_type, opts)
              data
            end

            # Retrieve all pipelines
            # Return all pipelines for the object type specified by &#x60;{objectType}&#x60;.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived.
            # @return [Array<(CollectionResponsePipeline, Integer, Hash)>] CollectionResponsePipeline data, response status code and response headers
            def get_page_with_http_info(object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: PipelinesApi.get_page ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling PipelinesApi.get_page"
              end
              # resource path
              local_var_path = '/{objectType}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

              # query parameters
              query_params = opts[:query_params] || {}
              query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] || 'CollectionResponsePipeline' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: PipelinesApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Replace a pipeline
            # Replace all the properties of an existing pipeline with the values provided. This will overwrite any existing pipeline stages. The updated pipeline will be returned in the response.
            # @param object_type [String] 
            # @param pipeline_id [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PipelineInput] :body 
            # @return [Pipeline]
            def replace(object_type, pipeline_id, opts = {})
              data, _status_code, _headers = replace_with_http_info(object_type, pipeline_id, opts)
              data
            end

            # Replace a pipeline
            # Replace all the properties of an existing pipeline with the values provided. This will overwrite any existing pipeline stages. The updated pipeline will be returned in the response.
            # @param object_type [String] 
            # @param pipeline_id [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PipelineInput] :body 
            # @return [Array<(Pipeline, Integer, Hash)>] Pipeline data, response status code and response headers
            def replace_with_http_info(object_type, pipeline_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: PipelinesApi.replace ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling PipelinesApi.replace"
              end
              # verify the required parameter 'pipeline_id' is set
              if @api_client.config.client_side_validation && pipeline_id.nil?
                fail ArgumentError, "Missing the required parameter 'pipeline_id' when calling PipelinesApi.replace"
              end
              # resource path
              local_var_path = '/{objectType}/{pipelineId}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'pipelineId' + '}', CGI.escape(pipeline_id.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

              # return_type
              return_type = opts[:return_type] || 'Pipeline' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: PipelinesApi#replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Update a pipeline
            # Perform a partial update of the pipeline identified by `{pipelineId}`. The updated pipeline will be returned in the response.
            # @param object_type [String] 
            # @param pipeline_id [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived. (default to false)
            # @option opts [PipelinePatchInput] :body 
            # @return [Pipeline]
            def update(object_type, pipeline_id, opts = {})
              data, _status_code, _headers = update_with_http_info(object_type, pipeline_id, opts)
              data
            end

            # Update a pipeline
            # Perform a partial update of the pipeline identified by &#x60;{pipelineId}&#x60;. The updated pipeline will be returned in the response.
            # @param object_type [String] 
            # @param pipeline_id [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [Boolean] :archived Whether to return only results that have been archived.
            # @option opts [PipelinePatchInput] :body 
            # @return [Array<(Pipeline, Integer, Hash)>] Pipeline data, response status code and response headers
            def update_with_http_info(object_type, pipeline_id, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: PipelinesApi.update ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling PipelinesApi.update"
              end
              # verify the required parameter 'pipeline_id' is set
              if @api_client.config.client_side_validation && pipeline_id.nil?
                fail ArgumentError, "Missing the required parameter 'pipeline_id' when calling PipelinesApi.update"
              end
              # resource path
              local_var_path = '/{objectType}/{pipelineId}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'pipelineId' + '}', CGI.escape(pipeline_id.to_s))

              # query parameters
              query_params = opts[:query_params] || {}
              query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

              # return_type
              return_type = opts[:return_type] || 'Pipeline' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: PipelinesApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
          end
        end
      end
    end
  end
end