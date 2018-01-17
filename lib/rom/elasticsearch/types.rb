require 'rom/types'

module ROM
  module Elasticsearch
    # Elasticsearch types use by schema attributes
    #
    # @api public
    module Types
      include ROM::Types

      # Default integer primary key
      ID = Int.meta(primary_key: true)

      # Define a date attribute type
      #
      # @return [Dry::Types::Type]
      #
      # @api public
      def self.Date(meta = {})
        Time.meta(type: "date").meta(meta)
      end

      # Define a keywoard attribute type
      #
      # @return [Dry::Types::Type]
      #
      # @api public
      def self.Keyword(meta = {})
        String.meta(type: "keyword").meta(meta)
      end

      # Define a keywoard attribute type
      #
      # @return [Dry::Types::Type]
      #
      # @api public
      def self.Text(meta = {})
        String.meta(type: "text").meta(meta)
      end
    end
  end
end
