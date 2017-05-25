class TagsController < ApplicationController

    def index

        @tags = Tag.all

    end

   def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

        redirect_to articles_path     
	end

end
