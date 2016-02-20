module RailsApiModel
  module Filters
    class Base
      attr_reader :api_model

      def initialize(api_model)
        @api_model = api_model
      end

      def apply_scope(relation, request)
        raise 'Not implemented in the base class'
      end

      def ar_model
        @api_model.ar_model
      end

      private

      def apply_single_filter(relation, param, value)
        raise 'Not implemented in the base class'
      end

      def apply_single_filter_for_each_param(relation, request, &block)
        relevant_parameters = request.params.select &block

        relevant_parameters.reduce(relation) do |relation, (param, value)|
          apply_single_filter(relation, param, value)
        end
      end
    end
  end
end
