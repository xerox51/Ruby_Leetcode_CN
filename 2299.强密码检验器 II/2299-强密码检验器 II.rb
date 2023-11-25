# @param {String} password
# @return {Boolean}
def strong_password_checker_ii(password)
  if password.length >= 8
    ans = "!@#$%^&*()-+".each_char.to_a
    temp_one = false
    temp_two = false
    temp_three = false
    temp_four = false
    for i in 0...password.length
      if password[i].ord >= 65 and password[i].ord <= 90
        temp_one = true
      elsif password[i].ord >= 97 and password[i].ord <= 122
        temp_two = true
      elsif password[i].ord >= 48 and password[i].ord <= 57
        temp_three = true
      elsif ans.include?(password[i])
        temp_four = true
      end
      if i < password.length - 1 and password[i] == password[i + 1]
        return false
        break
      end
    end
    return temp_one && temp_two && temp_three && temp_four
  else
    return false
  end
end
