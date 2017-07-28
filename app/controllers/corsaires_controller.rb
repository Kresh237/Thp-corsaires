class CorsairesController < ApplicationController
  def index
    @corsaires = Corsaire.all
  end

  def new
  	@corsaire = Corsaire.new
  end

  def create
  	@corsaire = Corsaire.new(corsaire_params)
  	if @corsaire.save
      flash[:success] = "Welcome !"
  		redirect_to @corsaire
  	else
     flash[:false] = "Try again"
  		render 'new'

  end
  end

  def show
  	@corsaire = Corsaire.find(params[:id])
  end

  def edit
  	@corsaire = Corsaire.find(params[:id])
  end

  def update
         @corsaire = Corsaire.find(params[:id])
  		 if @corsaire.update(corsaire_params)
flash[:success] = "Updated!"
  		 redirect_to @corsaire
      else 
        flash[:false] = "Try again"
      render 'edit'
  end
end

=begin
  def destroy
		@corsaire = Corsaire.find(params[:id])
		@corsaire.destroy
		
		redirect_to corsaires_path
  end
=end

private
  def corsaire_params
  params.require(:corsaire).permit(:first_name, :age, :bio, :slack_handle, :github_handle, :likeness)
  end
end
