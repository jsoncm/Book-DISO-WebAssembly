(module
 (type $0 (func (param i32 i32) (result i32)))
 (memory $0 0)
 (export "_add" (func $0))
 (func $0 (type $0) (param $var$0 i32) (param $var$1 i32) (result i32)
  (i32.add
   (get_local $var$1)
   (get_local $var$0)
  )
 )
)

