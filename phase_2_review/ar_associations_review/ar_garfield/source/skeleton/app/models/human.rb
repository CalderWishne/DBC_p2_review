class Human < ActiveRecord::Base
  has_many :adoptions
  has_many :pets, through: :adoptions, source: :cat
  # Remember to create a migration!
end


ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'human', 'humans'
end
