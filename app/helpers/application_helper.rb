module ApplicationHelper
  def load_svg(path)
    File.open("app/assets/images/svg/#{path}", "rb") do |svg|
      raw svg.read
    end
  end
end
