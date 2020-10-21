class CompaniesController < ApplicationController
 def show
  	@company = Company.find(params[:id])
  end

def edit
	@company = Company.find(params[:id])
  end

 def update
 	@company = Company.find(params[:id])
    @company.update(company_params)
    redirect_to company_path(@company.id)
  end

   def destroy
    reset_session
    redirect_to root_path
  end

def check
  @company = Company.find(params[:id])
end

def withdrawl
  @company = Company.find(current_company.id)

  @company.update(is_valid: "Invalid")

  reset_session

  redirect_to root_path
end

  private
  def company_params
  	params.require(:company).permit(:name, :profile_image, :company_name, :is_valid)
  end
end
