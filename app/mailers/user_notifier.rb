class UserNotifier < ActionMailer::Base
  default :from => "KiwisCloset"

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_comment_email(user, comment)
    @user = user
    @comment = comment
    mail( :to => @user.email,
    :subject => 'You have received a new message.' )
  end
end