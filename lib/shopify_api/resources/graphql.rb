# frozen_string_literal: true
require 'graphql/client'
require 'graphql/client/http'

module ShopifyAPI
  # GraphQL API.
  class GraphQL
    def initialize
      uri = Base.site.dup
      uri.path = '/admin/api/graphql.json'
      @client = ::GraphQL::Client::HTTP.new(uri.to_s) do
        # rubocop:disable Lint/NestedMethodDefinition
        def headers(_context)
          Base.headers
        end
        # rubocop:enable Lint/NestedMethodDefinition
      end
      @schema = ::GraphQL::Client.load_schema(@client)
      @client = ::GraphQL::Client.new(schema: @schema, execute: @client)
    end

    delegate :parse, :query, to: :@client
  end
end
