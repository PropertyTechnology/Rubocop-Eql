require 'rubocop'

require 'rubocop/eql/inject'
require 'rubocop/eql/version'

RuboCop::Eql::Inject.defaults!

require 'rubocop/cop/eql/equal_operator_instead_of_eql'
