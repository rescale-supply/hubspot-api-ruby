=begin
#CRM Objects

#CRM objects such as companies, contacts, deals, line items, products, tickets, and quotes are standard objects in HubSpot’s CRM. These core building blocks support custom properties, store critical information, and play a central role in the HubSpot application.  ## Supported Object Types  This API provides access to collections of CRM objects, which return a map of property names to values. Each object type has its own set of default properties, which can be found by exploring the [CRM Object Properties API](https://developers.hubspot.com/docs/methods/crm-properties/crm-properties-overview).  |Object Type |Properties returned by default | |--|--| | `companies` | `name`, `domain` | | `contacts` | `firstname`, `lastname`, `email` | | `deals` | `dealname`, `amount`, `closedate`, `pipeline`, `dealstage` | | `products` | `name`, `description`, `price` | | `tickets` | `content`, `hs_pipeline`, `hs_pipeline_stage`, `hs_ticket_category`, `hs_ticket_priority`, `subject` |  Find a list of all properties for an object type using the [CRM Object Properties](https://developers.hubspot.com/docs/methods/crm-properties/get-properties) API. e.g. `GET https://api.hubapi.com/properties/v2/companies/properties`. Change the properties returned in the response using the `properties` array in the request body.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Objects::BasicApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BasicApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Objects::BasicApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BasicApi' do
    it 'should create an instance of BasicApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Objects::BasicApi)
    end
  end

  # unit tests for archive
  # Archive
  # Move an Object identified by &#x60;{objectId}&#x60; to the recycling bin.
  # @param object_type 
  # @param object_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create
  # Create
  # Create a CRM object with the given properties and return a copy of the object, including the ID. Documentation and examples for creating standard objects is provided.
  # @param object_type 
  # @param simple_public_object_input 
  # @param [Hash] opts the optional parameters
  # @return [SimplePublicObject]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_by_id
  # Read
  # Read an Object identified by &#x60;{objectId}&#x60;. &#x60;{objectId}&#x60; refers to the internal object ID by default, or optionally any unique property value as specified by the &#x60;idProperty&#x60; query param.  Control what is returned via the &#x60;properties&#x60; query param.
  # @param object_type 
  # @param object_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
  # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @option opts [String] :id_property The name of a property whose values are unique for this object type
  # @return [SimplePublicObjectWithAssociations]
  describe 'get_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_page
  # List
  # Read a page of objects. Control what is returned via the &#x60;properties&#x60; query param.
  # @param object_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum number of results to display per page.
  # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
  # @option opts [Array<String>] :properties A comma separated list of the properties to be returned in the response. If any of the specified properties are not present on the requested object(s), they will be ignored.
  # @option opts [Array<String>] :associations A comma separated list of object types to retrieve associated IDs for. If any of the specified associations do not exist, they will be ignored.
  # @option opts [Boolean] :archived Whether to return only results that have been archived.
  # @return [CollectionResponseSimplePublicObjectWithAssociationsForwardPaging]
  describe 'get_page test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update
  # Perform a partial update of an Object identified by &#x60;{objectId}&#x60;. &#x60;{objectId}&#x60; refers to the internal object ID by default, or optionally any unique property value as specified by the &#x60;idProperty&#x60; query param. Provided property values will be overwritten. Read-only and non-existent properties will be ignored. Properties values can be cleared by passing an empty string.
  # @param object_type 
  # @param object_id 
  # @param simple_public_object_input 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id_property The name of a property whose values are unique for this object type
  # @return [SimplePublicObject]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
