module SubjectsHelper
  def check_external(subject)
    if subject.title != 'External' && subject.icon.attached?
      image_tag(url_for(subject.icon.variant(extent: '10:7')), class: 'card-img')
    elsif subject.title != 'External' && !subject.icon.attached?
      image_tag('placeholder.jpg', class: 'card-img')
    elsif subject.title == 'External'
      image_tag('default.jpg', class: 'card-img')
    end
  end
end
