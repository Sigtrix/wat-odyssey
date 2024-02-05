;; Module with naive recursive implementation of a "fibonacci function"
(module
    ;; validate_input(n) returns 1 if n is not in the range [0, 40]
    ;; else 0 is returned.
    (func $validate_input (param $n i32) (result i32)
    (i32.lt_s (local.get $n) (i32.const 0))
      if
        i32.const 1
        return
      end
    (i32.gt_s (local.get $n) (i32.const 40))
      if
        i32.const 1
        return
      end
    i32.const 0
    )
    ;; A recursive function that returns the n-th fibonacci number.
    ;; param n: index of the number in the fibonacci sequence to return.
    ;; n must be satisfy 0 <= n <= 40 else -1 is returned.
    ;; return: the n-th fibonacci number.
    (func $fibo (export "fibo") (param $n i32) (result i32)
      (call $validate_input (local.get $n))
      if
        i32.const -1
        return
      end
      (i32.eq (local.get $n) (i32.const 0))
      if
        i32.const 0
        return
      end
      (i32.eq (local.get $n) (i32.const 1))
      if
        i32.const 1
        return
      end
    (i32.add
        (call $fibo (i32.sub (local.get $n) (i32.const 1)))
        (call $fibo (i32.sub (local.get $n) (i32.const 2))))
    )
)