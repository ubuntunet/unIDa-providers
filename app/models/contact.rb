class Contact < ActiveRecord::Base
  has_many :identity_providers
  has_many :services

  has_paper_trail
end
