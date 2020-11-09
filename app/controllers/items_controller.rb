class ItemsController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:index, :show]
    before_action :set_item, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource

    def index
        @items = Item.all
    end

    def show
    end

    def new
        @item = Item.new
      end

    def edit
    end  

    def create
        @item = Item.new(item_params)
        if @item.save
            redirect_to(items_path)
        else
            render('new')
        end
    end

    def edit
        @item = Item.find(params[:id])
      end
    
      def update
        @item = Item.find(params[:id])
        if @item.update(item_params)
            redirect_to(item_path(@item)) 
        else
            render('edit')
        end
      end
    
      def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to(items_path)
      end

    private
        def set_item
            @item = Item.find(params[:id])
        end

        def item_params
            params.require(:item).permit(
              :name, 
              :in_stock,
              :price,
              :description,
              :category_id
            )
        end
    
end