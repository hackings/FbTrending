require 'net/http'
class FbPage < ActiveRecord::Base

 validates :business_name, :facebook_url, :email, presence: true
 validates :email, format: { with: /\A(\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3})\Z/, allow_blank: true }

 scope :top_30_trands, order("facebook_likes DESC").limit(30)

 def self.update_likes
   all.each do |page|
     page.get_likes
     page.save     
   end
 end

 def get_likes
   fb_graph_path = 'http://graph.facebook.com/'
   fb_page_name = self.facebook_url.split('/').last
   uri = URI( fb_graph_path + fb_page_name )
   data = Net::HTTP.get(uri)
   data = JSON.parse(data)
   self.facebook_likes = data['likes'].to_i
   return true
 end


end
