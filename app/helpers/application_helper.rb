module ApplicationHelper
  def profile_img(user)
    if user.avatar?
      image_tag(user.avatar.to_s, alt: user.name)
    else

      unless user.provider.blank?
        img_url = user.image_url
      else
        img_url = 'no_image.png'
      end
      image_tag(img_url, alt: user.name)
    end
  end
end
