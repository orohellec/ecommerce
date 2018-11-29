class UserMailer < ApplicationMailer
    default from: "a.tortai14@gmail.com"

    # def order()
    #     mail(from: "a.tortai14@gmail.com", to: "a.tortai@gmail.com",
    #          subject: "Thank you for your order")
    # end

    def order(user)
        @user = user
        mail(:to => user.email, :subject =>"Congratulations for your subscription")
      end
end
