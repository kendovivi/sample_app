module UsersHelper

  # returns the Gravatar image for user

  def gravatar_for(user, options = { size: 50 })
  	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
  	size = options[:size]
  	# url変更が必要
  	gravatar_url = "//secure.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  	image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
