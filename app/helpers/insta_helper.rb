module InstaHelper
  def choose_edit_or_new
    if action_name == "new"
      insta_path
    elsif action_name == "edit"
      instum_path
    end
  end

end
