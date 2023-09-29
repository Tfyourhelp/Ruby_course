module UsersHelper
  # tat ca method co trong helper file se tu dong co trong bat ki view , cho thuan tien thi dat ham gravatar_for vao user controller helper
  def gravatar_for(user, option= {size: 80})
    size = option[:size]
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
