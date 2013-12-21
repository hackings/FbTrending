
namespace :fb_trending do 
  task :update_likes => :environment do
    puts '--- updating page likes ---'
    FbPage.update_likes
    puts '--- updates complete! ---'
  end
end
