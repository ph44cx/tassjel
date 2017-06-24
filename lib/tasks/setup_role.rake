desc "Setup Roles"
task :setup_role => :environment do
  Role.create(name:"general_manager")
  Role.create(name:"university_manager")
  Role.create(name:"blogger_author")
  Role.create(name:"student_manager")
  Role.create(name:"student")
end