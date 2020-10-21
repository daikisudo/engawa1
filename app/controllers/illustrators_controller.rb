class IllustratorsController < ApplicationController



def show
  	@illustrator = Illustrator.find(params[:id])
  end

def edit
	@illustrator = Illustrator.find(params[:id])
  end

 def update
 	@illustrator = Illustrator.find(params[:id])
    @illustrator.update(illustrator_params)
    redirect_to illustrator_path(@illustrator.id)
  end

  def destroy
    reset_session
    redirect_to root_path
  end
  
def check
  @illustrator = Illustrator.find(params[:id])
end

def withdrawl
  @illustrator = Illustrator.find(current_illustrator.id)

  @illustrator.update(is_valid: "Invalid")

  reset_session

  redirect_to root_path
end

private
  def illustrator_params
    params.require(:illustrator).permit(:name, :profile_image, :illustrator_name, :is_valid)
  end
end