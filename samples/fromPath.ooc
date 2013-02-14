use stbi
import stb/image

import utils

// sdk stuff
import structs/ArrayList

main: func {
    "Those should work: " println()

    exts := ArrayList<String> new(). add("png"). add("jpg"). add("bmp"). add("tga")
    exts each(|ext|
        load("checker.%s" format(ext))
    )

    "This should fail: " println()
    load("checker.progressive.jpg")
}

load: func (path: String) {
    width, height, components: Int
    pixels := StbImage fromPath(path, width&, height&, components&, 4)

    info(pixels, path, width, height, components)
}

