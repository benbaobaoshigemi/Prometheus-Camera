import com.prometheus.camera.m3.M3Jpeg;
import java.nio.file.Files;
import java.nio.file.Paths;

public final class JpegProbe {
    public static void main(String[] args) throws Exception {
        byte[] result = M3Jpeg.wrap(Files.readAllBytes(Paths.get(args[0])), Integer.parseInt(args[2]));
        Files.write(Paths.get(args[1]), result);
        System.out.println("M3 JPEG bytes=" + result.length);
    }
}
