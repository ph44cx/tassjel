ActionMailer::Base.smtp_settings = { 
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "www.tassjel.com",
	:authentication => :plain,
	:enable_starttls_auto => true,
	:user_name => "muhammed@gmail.com",
	:password => "tassjel#123",
	:openssl_verify_mode  => 'none'
}