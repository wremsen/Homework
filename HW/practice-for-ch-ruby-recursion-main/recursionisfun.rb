def sum_to(n)
    return 1 if n == 1
    return nil if n < 1

    n += sum_to(n - 1)
end

def add_numbers(arr)
    return 0 if arr.length == 0

    arr[0] += add_numbers(arr[1...arr.length])
end

def gamma_fnc(num)
    return 1 if num == 1

    (num - 1) * gamma_fnc(num - 1)
end

def ice_cream_shop(arr, fave)

end

def reverse(str)
    return str if str.length <= 1

    str[-1] + reverse(str[0...-1])
end


