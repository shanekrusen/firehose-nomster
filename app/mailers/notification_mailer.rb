class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomster-shane-krusen.herokuapp.com"
  
  def comment_added
    mail(to:"shanekrusen@gmail.com",
         subject: "A comment has been added to your place")
  end
end
