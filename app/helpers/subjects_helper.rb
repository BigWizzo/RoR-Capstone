module SubjectsHelper
  def check_external(subject)
    if subject.title != 'External' && subject.icon.present?
      image_tag(subject.icon.variant(resize: '500x350'), class: "card-img")
      # image_tag(url_for(subject.icon.variant(extent: '10:7')), class: 'card-img')
      # image_tag subject.icon.variant(extent: '10:7'), class: 'card-img'
    elsif subject.title != 'External' && !subject.icon.present?
      image_tag('placeholder.jpg', class: 'card-img')
    elsif subject.title == 'External'
      image_tag('default.jpg', class: 'card-img')
    end
  end
end
