# README

Variable References
@user - find user record based on db ID
@post - find post record based on db ID
user - reference to individual DB record

NOTES
- Spent about two hours trying to debug seeds.db
- Building frame of db first - similar to artists/works
- Forgot to add user images into DB
- Annotate doesn't work
- Issue with b-crypt
- Installed Bootstrap and Font Awesome



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<div class='login'>
  <ul>
    <li><%= link_to(new_user_path) do %>
      <i class="fa fa-user-plus" aria-hidden="true"></i>
    <% end %>
    </li>

    <li><%= link_to(login_path) do %>
      <i class="fa fa-sign-in" aria-hidden="true"></i>
    <% end %>
    </li>


    <li><%= "Sign Out", link_to(login_path, :method => :delete) %>
    </li>
  </ul>
</div>

    <li><%= link_to("Log out", login_path, :method => :delete) %></li>
