require 'pry'
def decodeString(string)
    stack = []
    stack.push(["", 1])
    num = ""
    string.split("").each do |char|
      if is_number?(char)
        num += char
      elsif char == '['
        stack.push(["", num.to_i])
        num = ""
      elsif char == ']'
        st, k = stack.pop
        stack[-1][0] += st * k
      else
        stack[-1][0] += char
      end
    end
    return stack[0][0]
end
# for "4[ab]", "abababab"
# For s = "2[b3[a]]", "baaabaaa"

def is_number?(char)
    true if Float(char) rescue false
end
