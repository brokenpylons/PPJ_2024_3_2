package task

import java.io.File
import java.io.InputStream
import java.io.OutputStream

// WARNING: This code has nothing to do with the task at hand. Feel free to delete it.

fun echo(prefix: String, input: InputStream, output: OutputStream) {
    val buffer = mutableListOf<Byte>()

    while (true) {
        val symbol = input.read()
        if (symbol == -1) break
        buffer.add(symbol.toByte())

    }
    output.write(prefix.toByteArray() + buffer.toByteArray())
}

fun main(args: Array<String>) {
    echo("ANSWER", File(args[0]).inputStream(), File(args[1]).outputStream())
}
