require 'faker' 
require 'factory_bot_rails'

namespace :dev do

    desc 'populate dev database with sample student data'
    
    task :populate => :environment do
        Rake::Task['db:reset'].invoke
        
        # title table
        %w(Mr Mrs Miss Ms Dr Master).each_with_index { |v, i| 
            FactoryBot.create(:title, id: (i + 1), name: "#{v}")
        } 
        # student table
        50.times do |n|
            FactoryBot.create(:student, title_id: rand(1..6))
        end
        
    end
end
