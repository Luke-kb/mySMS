require 'faker' 
require 'factory_bot_rails'

namespace :dev do
  desc 'populate dev database with sample student, course and institute data'
  task :populate => :environment do
    Rake::Task['db:reset'].invoke

    title = FactoryBot.create(:title)
    FactoryBot.create_list(:student, 40, title: title)
    FactoryBot.create_list(:course, 30)

  end
end
