class Adoption < ActiveRecord::Base
  belongs_to :cat
  belongs_to :human
  belongs_to :vet
  # Remember to create a migration!
end
