module ApplicationHelper
  def count_clock
    count = 0
    @clockings.each do |clocking|
      count += clocking.duration
    end
    count
  end

  def user_name
    if student_signed_in?
      current_student.username
    end
  end
end
