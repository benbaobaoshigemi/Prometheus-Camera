import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.Path;

public final class ExifTagProbe {
    public static void main(String[] args) throws Exception {
        Method tagExif = Class.forName("com.prometheus.camera.m3.M3Jpeg")
                .getDeclaredMethod("tagExif", byte[].class);
        tagExif.setAccessible(true);
        byte[] input = Files.readAllBytes(Path.of(args[0]));
        byte[] output = (byte[]) tagExif.invoke(null, (Object) input);
        Files.write(Path.of(args[1]), output);
    }
}
