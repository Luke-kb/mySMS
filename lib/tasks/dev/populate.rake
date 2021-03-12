require 'faker' 
require 'factory_bot_rails'

namespace :dev do

    desc 'populate dev database with sample student data'
    
    task :populate => :environment do
        Rake::Task['db:reset'].invoke
        50.times do |n|
            FactoryBot.create(:student)
        end
    end
end
