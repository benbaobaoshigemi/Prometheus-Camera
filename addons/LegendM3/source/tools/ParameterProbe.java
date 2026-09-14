import com.prometheus.camera.m3.M3Parameters;
import java.io.DataOutputStream;
import java.nio.file.Files;
import java.nio.file.Path;

public final class ParameterProbe {
    public static void main(String[] args) throws Exception {
        M3Parameters parameters = new M3Parameters(Files.readAllBytes(Path.of(args[0])));
        DataOutputStream output = new DataOutputStream(System.out);
        for (int i = 1; i < args.length; i += 2)
            for (float value : parameters.shading(Integer.parseInt(args[i]), Float.parseFloat(args[i + 1])))
                output.writeFloat(value);
        output.flush();
    }
}
