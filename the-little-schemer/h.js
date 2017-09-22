


function multirember_co(a, l, callback) {

    if (!l || l.length === 0) {
        return callback([], [])
    }
    var v = l.pop()
    if (a === v) {
        return multirember_co(a, l, (newl, seen) => {
            seen.push(v)
            return callback(newl, seen)
        })
    } else {
        return multirember_co(a, l, (newl, seen) => {
            newl.push(v)
            return callback(newl, seen)
        })
    }
}


console.log(multirember_co('s', ['a', 's', 'g', 'h', 's', 'm'], (newl, seen) => newl))