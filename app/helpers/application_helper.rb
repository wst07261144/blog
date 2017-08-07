module ApplicationHelper
  def show_flash
    if flash
      flash.map do |k, v|
        if k == 'notice'
          '<div class="alert text-center alert-success">' + v + '</div>'
        elsif k == 'alert' || k == 'warning'
          '<div class="alert text-center alert-danger">' + v + '</div>'
        end
      end.join('')
    end
  end
end
