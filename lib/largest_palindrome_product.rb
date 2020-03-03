# Implement your procedural solution here!

def is_palindrome?(string_num)
    if string_num.length < 2
        return true
    elsif string_num[0] === string_num[-1] 
        is_palindrome?(string_num[1..-2])
    else
        return false
    end
end

def largest_palindrome_product
    i = 999
    k = 999
    stored_k = 0
    stored_palindrome = 0
    while i > 99 && i > stored_k do
        while k > 99 && k > stored_k do
            if i * k > stored_palindrome && is_palindrome?((i * k).to_s) 
                stored_k = k
                stored_palindrome = i * k
                k = 999
                i -= 1
            else
                k -= 1
            end
        end
        k = 999
        i -= 1
    end
    stored_palindrome
end