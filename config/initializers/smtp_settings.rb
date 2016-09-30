ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "gmail.com",
    :user_name => "jd.levarato@gmail.com",
    :password => "GTFO NOOB",
    :authentication => :login,
    :enable_starttls_auto => true
}

#A corriger lors du déploiement, pas long tkt