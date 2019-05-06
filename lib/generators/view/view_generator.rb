class ViewGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)
  source_root File.expand_path('templates', __dir__)
  argument :name, type: :string
  argument :action, type: :string

  def generate_view
    template "#{file_name}.html.erb", "app/views/#{folder_name}/#{file_name}.html.erb"
  end

  private

  def folder_name
    name.underscore
  end

  def file_name
    action.underscore
  end

  def type
    name.titleize.singularize
  end

  def down_type
    name.downcase.singularize
  end

  def render_form
    "<%= render 'form', #{down_type}: @#{down_type} %>"
  end

  def render_link_back
    "<%= link_to 'Back', #{folder_name}_path %>"
  end
end
