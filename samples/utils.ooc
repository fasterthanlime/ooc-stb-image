use stb-image
import stb/image

info: func (pixels: UInt8*, path: String, width, height, components: Int) {
    if (!pixels) {
        "%s failed to load! reason: %s" printfln(path, StbImage failureReason())
    } else {
        "%s loaded: %dx%d, %d components" printfln(path, width, height, components)
    }
}
