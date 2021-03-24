namespace :dev do
  desc 'migrate Student.title data to Title.name column and assign reference id'
  task migrate_title_data: :environment do
    # populate Title.name data with unique old_title values 
    Student.uniq.pluck(:old_title).each do |title|
        t = Title.find_or_create_by_name(title) if title.present?
        t.save!
    end
    # assign title_id to each student where title matches 
    Title.all.each do |title|
        Student.where(old_title: title.name).update_all(title_id: title.id)
    end
  end
end
