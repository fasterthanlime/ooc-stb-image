
info: func (pixels: UInt8*, path: String, width, height, components: Int) {
    if (!pixels) {
        "%s failed to load!" printfln(path)
    } else {
        "%s loaded: %dx%d, %d components" printfln(path, width, height, components)
    }
}
