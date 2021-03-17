
namespace :dev do
   
    desc 'migrate Student.title data to Title.name column and assign reference id'

    task migrate_title_data: :environment do

        # populate Title.name data with unique old_title values 
        Student.uniq.pluck(:old_title).each do |title|
            t = Title.find_or_create_by_name(title) unless !title.present?
            t.save!
        end
        
        # assign title_id to each student in batches 
        Title.all.each do |title|
            Student.where(:old_title => title.name).find_in_batches do |students|
                students.each do |student|
                    student.title_id = title.id
                    student.save!
                end
            end
        end
    end
end




