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
        h3 "Created at: #{current_user.created_at}"
        h3 "Updated at: #{current_user.updated_at}"
      end

      div class: "px-4 py-5 sm:p-6" do
        h3 do
          if current_user.first_name || current_user.last_name
            name = [current_user.first_name, current_user.last_name].compact.join(" ")
            text "Display name: #{name}"
          else
            text "Display name: #{current_user.email}"
          end
        end
      end
    end
  end
end
