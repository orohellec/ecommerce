class UserMailer < ApplicationMailer
    default from: "axelle.tortai@student.esc-rennes.com"

    # def welcome_mailer()
    #     mail(from: "axelle.tortai@student.esc-rennes.com", to: "a.tortai@gmail.com",
    #          subject: "Thank you for your order")
    # end

    def welcome_mailer(user)
        @user = user
        mail(:to => user.email, :subject =>"Congratulations for your subscription")
      end
end
