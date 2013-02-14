use stbi
import stb/image

import utils

main: func {
    ["png", "jpg", "bmp", "tga"] each(String, |ext|
        load("checker.%s" format(ext))
    )
}

load: func (path: String) {
    width, height, components: Int
    pixels := StbImage fromPath(path, width&, height&, components&, 4)

    info(pixels, path, width, height, components)
}

