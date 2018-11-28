class UserMailer < ApplicationMailer
    def order()
        mail(from: "a.tortai14@gmail.com", to: "a.tortai14@gmail.com",
             subject: "Thank you for your order")
    end
end
