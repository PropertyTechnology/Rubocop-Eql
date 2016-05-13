module RuboCop
  module Cop
    module Eql
      class EqualOperatorInsteadOfEql < Cop
        MESSAGE = 'Avoid using `==`. Use `.eql?` instead.'.freeze

        def on_send(node)
          _receiver, method_name, _args = *node
          return unless method_name.eql?(:==)

          add_offense(node, :expression, MESSAGE)
        end
      end
    end
  end
end
