class UserCommandMailer < ApplicationMailer

    default from: "axelle.tortai@student.esc-rennes.com"

    def command(email)
        mail(:to => email, :subject => "My Subscription Invoice")
    end

end
