class RegistrationsController < Devise::RegistrationsController

  def destroy
  @user_id = User.find(current_user).id.to_s
  Post.where(user_id: @user_id).destroy_all
  Comment.where(user_id: @user_id).destroy_all
  resource.destroy
  set_flash_message :notice, :destroyed
  sign_out_and_redirect(self.resource)
  end
end
