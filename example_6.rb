class MembersController < ApplicationController

  def show
    @member = Member.find(params[:id])
    render json: @member
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      render json: @member
    else
      render json: @member.errors, status: 422
    end
  end

  def destroy
    @member = Member.find(params[:id])
    if @member.destroy
      render json: 'member removed', status: 204
    else
      render json: @member.errors, status: 422
    end
  end

  private

  def member_params
    params.require(:member).permit(:id, :name, :surname)
  end

end
