class FormsController < ApplicationController
  def new_form
    @list_of_items = Item.all

    render({ :template => "forms_templates/new_form" })
  end
end
