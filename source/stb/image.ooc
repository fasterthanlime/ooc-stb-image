use stb-image
include ./stb_image | (STB_IMAGE_IMPLEMENTATION=1, STB_IMAGE_STATIC=1)

StbIoCallbacks: cover {
  read: Pointer /* Func (user: Pointer, data: Char*, size: Int) -> Int */
  skip: Pointer /* Func (user: Pointer, n: UInt) */
  eof : Pointer /* Func (user: Pointer) -> Int */
}

StbImage: class {

  fromMemory: extern(stbi_load_from_memory) static func (buffer: UInt8*, len: Int, \
    x: Int*, y: Int*, comp: Int*, reqComp: Int) -> UInt8*

  fromPath: extern(stbi_load) static func (filename: CString, \
    x: Int*, y: Int*, comp: Int*, reqComp: Int) -> UInt8*

  fromCb: extern(stbi_load_from_callbacks) static func (clbk: StbIoCallbacks*, user: Pointer, \
    x: Int*, y: Int*, comp: Int*, reqComp: Int) -> UInt8*

  failureReason: extern(stbi_failure_reason) static func -> CString

}

