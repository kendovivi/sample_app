module UsersHelper

  # returns the Gravatar image for user

  def gravatar_for(user)
  	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
  	# url変更が必要
  	gravatar_url = "//secure.gravatar.com/avatar/#{gravatar_id}"
  	image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
