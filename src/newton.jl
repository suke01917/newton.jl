module newton

function newton(f)
    i = 0
    x = 1
    h = 0.01
    fd(x) = (f(x+h)-f(x-h))/2h

    for i = 1:1000
        xn = x - f(x)/fd(x)
        if abs(xn - x) < 0.00001
            x = xn
            break
        else 
            x = xn 
        end
    end

    print("\n")
    return x
end

function newton_detail(f)
    i = 0
    x = parse(Float64, Base.prompt("start value"))
    h = 0.01
    fd(x) = (f(x+h)-f(x-h))/2h

    times = parse(Int64, Base.prompt("times"))
    limit = parse(Float64, Base.prompt("limit"))
    for i = 1:times
        xn = x - f(x)/fd(x)
        println(i, " : ", xn)
        if abs(xn - x) < limit
            x = xn
            break
        else
            x = xn 
        end
    end

    print("\n")
    return x
end

export newton
export newton_detail

end
