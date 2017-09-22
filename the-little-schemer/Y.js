


(f => f(f))(f => l => !l.shift() ? 0 : f(f)(l) + 1)

const Y = le => (f => f(f))(f => le(x => f(f)(x)))

console.log(Y(f => x => {
    let v = x.shift()
    return !v ? 1 : v * f(x)
})([1, 2, 3, 4]))




