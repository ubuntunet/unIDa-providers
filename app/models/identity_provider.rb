class IdentityProvider < ActiveRecord::Base
  belongs_to :organization
  belongs_to :contact

  has_paper_trail
end
