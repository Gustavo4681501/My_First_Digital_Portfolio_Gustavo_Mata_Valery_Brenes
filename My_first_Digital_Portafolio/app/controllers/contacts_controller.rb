class ContactsController < ApplicationController


  before_action :authenticate_user!, except: %i[ index show ]

    def index

    end

    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)

      if @contact.save

      else

        puts @contact.errors.full_messages
        render :new

      end
    end

    private

    def contact_params
      params.require(:contact).permit(:name,:message,:email,:file)
    end
end
