class FbPage < ActiveRecord::Base

 validates :business_name, :facebook_url, :email, presence: true
 validates :email, format: { with: /\A(\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3})\Z/, allow_blank: true }

end
