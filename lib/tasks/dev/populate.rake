require 'faker' 
require 'factory_bot_rails'

namespace :dev do
  desc 'populate dev database with sample student, course and institute data'
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    # Title table
    %w(Mr Mrs Miss Ms Dr Master).each_with_index { |v, i| 
        FactoryBot.create(:title, id: (i + 1), name: "#{v}")
    }
    # Student table
    20.times do
      FactoryBot.create(:student, title_id: rand(1..6))
    end
    
    # Course table
    20.times do 
      FactoryBot.create(:course, institute_id: rand(1..10))
    end
    # Institute table
    FactoryBot.create_list(:institute, 10)
  end
end
