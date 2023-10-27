class Contact < MailForm::Base
    attribute :name, validate: true
    attribute :message
    attribute :email
    attribute :file, attachment: true

    def headers
    {
        subject: 'Sending email',
        to: 'valegus2023@hotmail.com',
        from: %("#{name}" <#{'valegus2023@hotmail.com'}>),
        encoding: 'base64'
    }
    end
end
