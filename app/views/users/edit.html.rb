<h2>プロフィール編集</h2>
<%= form_with model:@user, local:true do |f| %>
  <label for="inputName">Name</label>
  <%= f.text_field :name, autofocus: true, id:"inputName", placeholder:"名前"%>
  <%= attachment_image_tag @user, :profile_image, :fill, 60, 60, fallback: "no_image.jpg"%>
  <label for="inputImage">ProfileImage</label>
  <%= f.attachment_field :profile_image, placeholder: "プロフィール画像" %>  <%= f.submit "変更を保存" %>
<% end %>
