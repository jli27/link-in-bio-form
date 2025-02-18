class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def update
    x = Item.new
    x.link_url = params.fetch("query_link_url")
    x.link_description = params.fetch("query_link_description")
    x.thumbnail_url = params.fetch("query_thumbnail_url")
    x.save
    
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end
end
