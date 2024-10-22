import swift_library

@_cdecl("__swift_bridge__$swift_multiply_by_4")
func __swift_bridge__swift_multiply_by_4(_ num: Int64) -> Int64 {
    swift_multiply_by_4(num: num)
}
