# @param {String[]} positive_feedback
# @param {String[]} negative_feedback
# @param {String[]} report
# @param {Integer[]} student_id
# @param {Integer} k
# @return {Integer[]}
def top_students(positive_feedback, negative_feedback, report, student_id, k)
  report_h = report.map { |item| item.split(" ") }
  positive_feedback = positive_feedback.to_h { |item| [item, 1] }
  negative_feedback = negative_feedback.to_h { |item| [item, 1] }
  total = []
  report_h.each_with_index do |item, index|
    score = 0
    for it in item
      if positive_feedback.include?(it)
        score += 3
      end
      if negative_feedback.include?(it)
        score -= 1
      end
    end
    total.push([student_id[index], score])
  end
  total.sort_by! { |item| [-item[1], item[0]] }
  total.map! { |item| item[0] }
  total[0, k]
end
