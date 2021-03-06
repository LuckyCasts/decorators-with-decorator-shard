class Me::ShowPage < MainLayout
  def page_title
    "Your Profile"
  end

  def content
    div class: "bg-white overflow-hidden shadow sm:rounded-lg" do
      div class: "border-b border-gray-200 px-4 py-5 sm:px-6" do
        h1 "Your profile", class: "font-medium text-lg"
      end

      div class: "border-b border-gray-200 px-4 py-5 sm:p-6" do
        h3 "Email: #{current_user.email}"
        h3 "First name: #{current_user.first_name || "Not set"}"
        h3 "Last name: #{current_user.last_name || "Not set"}"
        decorated_date = TimeDecorator.new(current_user.created_at)
        date_string = decorated_date.pretty_date

        h3 "Created at: #{date_string}"
        h3 "Created at (hours): #{decorated_date.hour}"

        h3 "Updated at: #{TimeDecorator.new(current_user.updated_at).pretty_date}"
      end

      div class: "px-4 py-5 sm:p-6" do
        h3 "Display name: #{current_user.display_name}"
      end
    end
  end
end
