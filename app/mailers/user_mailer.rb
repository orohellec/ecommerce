class UserMailer < ApplicationMailer
    def order()
        mail(from: "a.tortai14@gmail.com", to: "cyril.avronsart@gmail.com",
             subject: "Thank you for your order")
    end
end
