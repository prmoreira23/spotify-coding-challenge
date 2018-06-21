def sortByStrings(s, t)
  new_str = ""
  dict = Hash.new(0)
  s.split("").each {|letter| dict[letter] += 1 }
  t.split("").each {|letter| new_str += letter * dict[letter] }
  new_str
end
