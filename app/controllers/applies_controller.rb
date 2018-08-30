# frozen_string_literal: true

class AppliesController < ApplicationController
  before_action :logged_in_user?
  before_action :correct_user?

  def create
    Apply.create(user_id: current_user.id, exhibition_id: params[:exhibition_id])
    @applies = Apply.where(exhibition_id: params[:exhibition_id])
    @exhibition = Exhibition.find(params[:exhibition_id])
    respond_to do |format|
      format.js
    end
  end

  def destroy
    Apply.find_by(user_id: current_user.id, exhibition_id: params[:exhibition_id]).destroy
    @applies = Apply.where(exhibition_id: params[:exhibition_id])
    @exhibition = Exhibition.find(params[:exhibition_id])
    respond_to do |format|
      format.js
    end
  end
end
