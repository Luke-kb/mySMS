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
    FactoryBot.create_list(:student, 20, title_id: rand(1..6))
    # Course table
    FactoryBot.create_list(:course, 20)
    # Institute table
    FactoryBot.create_list(:institute, 10)
  end
end
