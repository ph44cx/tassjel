ActionMailer::Base.smtp_settings = { 
	:address => "smtp.gmail.com",
	:port => 587,
	:domain => "www.tassjel.com",
	:authentication => :plain,
	:enable_starttls_auto => true,
	:user_name => "info@tassjel.com",
	:password => "tassjel206044",
	:openssl_verify_mode  => 'none'
}