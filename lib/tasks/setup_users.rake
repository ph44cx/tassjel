desc "Setup Users"
task :setup_users => :environment do
  User.create(first_name:"General Manager", email: 'gn_manager@tassjel.com', password: 'password', password_confirmation: 'password', role_id: Role.find_by_name('general_manager').id, service: 'N/A')
  User.create(first_name:"University Manager", email: 'un_manager@tassjel.com', password: 'password', password_confirmation: 'password', role_id: Role.find_by_name('university_manager').id, service: 'N/A')
  User.create(first_name:"Blogger Author", email: 'bl_author@tassjel.com', password: 'password', password_confirmation: 'password', role_id: Role.find_by_name('blogger_author').id, service: 'N/A')
  User.create(first_name:"Student Manager", email: 'st_manager@tassjel.com', password: 'password', password_confirmation: 'password', role_id: Role.find_by_name('student_manager').id, service: 'N/A')
end