module SubjectsHelper
  def check_external(subject)
    if subject.title != 'External' && subject.icon.attached?
      image_tag subject.icon.variant(crop: '500x350+0+0'), class: 'card-img'
    elsif subject.title != 'External' && !subject.icon.attached?
      image_tag('placeholder.jpg', class: 'card-img')
    elsif subject.title == 'External'
      image_tag('default.jpg', class: 'card-img')
    end
  end
end
