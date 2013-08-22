module YmActivity::ActivityHelper

  def activity_text(activity_item)
    if activity_item.resource
      "#{link_to_self(activity_item.user)} created the #{activity_item.resource_type.humanize.downcase} #{link_to_self(activity_item.resource)}".html_safe
    else
      "#{link_to_self(activity_item.user)} #{activity_item.text}".html_safe
    end
  end

  def link_to_activity_image(activity_item)
    link_to(activity_item.user, :class => 'pull-left') do
      image_for(activity_item.user, '40x40#', :class => 'media-object')
    end
  end

end