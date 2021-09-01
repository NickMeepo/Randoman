
function generator(count, pattern) {
    var maker = new window.RandExp(pattern);
    if (count == 1) {
        return maker.gen();
    }
    var result = [];
    for (i=0; i<count; i++) {
        result.push(maker.gen());
    }
    return result;
}
