(module
 (type $0 (func (param i32)))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func))
 (type $3 (func (result f64)))
 (import "env" "table" (table 2 anyfunc))
 (import "env" "memoryBase" (global $import$1 i32))
 (import "env" "tableBase" (global $import$2 i32))
 (import "env" "abort" (func $import$3 (param i32)))
 (global $global$0 (mut i32) (i32.const 0))
 (global $global$1 (mut i32) (i32.const 0))
 (global $global$2 i32 (i32.const 1))
 (elem (get_global $import$2) $3 $0)
 (memory $0 0)
 (export "__post_instantiate" (func $2))
 (export "_add" (func $0))
 (export "runPostSets" (func $1))
 (export "fp$_add" (global $global$2))
 (func $0 (type $1) (param $var$0 i32) (param $var$1 i32) (result i32)
  (i32.add
   (get_local $var$1)
   (get_local $var$0)
  )
 )
 (func $1 (type $2)
  (nop)
 )
 (func $2 (type $2)
  (set_global $global$0
   (get_global $import$1)
  )
  (set_global $global$1
   (i32.add
    (get_global $global$0)
    (i32.const 5242880)
   )
  )
 )
 (func $3 (type $3) (result f64)
  (call $import$3
   (i32.const 0)
  )
  (f64.const 0)
 )
 ;; custom section "dylink", size 7
)

