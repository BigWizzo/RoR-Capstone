module SubjectsHelper
  def check_external(clocking)
    if clocking.subject_id != nil && clocking.subject.icon.attached?
      image_tag clocking.subject.icon.variant(crop: '500x350+0+0'), class: 'card-img'
    elsif clocking.subject_id == nil
      image_tag('default.jpg', class: 'card-img')
    end
  end
end
