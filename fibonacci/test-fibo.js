const assert = require('node:assert');
const fs = require('fs');

(async () => {
    const bytes = fs.readFileSync(__dirname + '/fibo.wasm');
    let obj = await WebAssembly.instantiate(new Uint8Array(bytes));

    let fibo = obj.instance.exports.fibo;
    console.log(`fibo(5) = ${fibo(5)}`);

    assert.equal(fibo(0), 0);
    assert.equal(fibo(1), 1);
    assert.equal(fibo(2), 1);
    assert.equal(fibo(3), 2);
    assert.equal(fibo(4), 3);
    assert.equal(fibo(5), 5);
    assert.equal(fibo(6), 8);

    assert.equal(fibo(-1), -1);
    assert.equal(fibo(41), -1);
})();