class Vet < ActiveRecord::Base
  has_many :clients, class_name: "Adoption"
  has_many :customers, through: :clients, source: :human
  has_many :patients, through: :clients, source: :cat
  # Remember to create a migration!
end
