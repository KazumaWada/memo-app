# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

<div class='container'>
<div class='row'>

<% @posts.each do |post| %>

<div class='col-md-4 mt-4'>
<%= link_to post_path(post),class: 'text-dark' do %>
<div class="card" style="width: 20rem;">
<%# image_tag 'go.jpeg', class: "card-img-top" %>
  <div class="card-body">
    <h5 class="card-title"><%= post.title %></h5>
    <p class="card-text"><%= post.content.truncate(10) %></p>
    <p class="card-text">
      <%= link_to edit_post_path(post) do %>
<i class="fas fa-edit"></i>
<% end %> 
<%= link_to post_path(post),  method: :delete, data: { confirm: "You sure?" } do %>
<i class="far fa-trash-alt"></i>
<% end %>
      </p>
    <p class="card-text"><small class="text-muted"><%= time_ago_in_words(post.created_at) %>ago</small></p>
  </div>
</div>
<% end %><%# link_to %>
</div><%# col-md-4 %>

<% end %>

</div>
</div>
