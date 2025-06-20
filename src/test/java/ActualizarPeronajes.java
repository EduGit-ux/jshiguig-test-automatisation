import com.intuit.karate.junit5.Karate;

public class ActualizarPeronajes {

    static {
        System.setProperty("karate.ssl", "true");
    }
    @Karate.Test
    Karate testBasic() {
        return Karate.run("classpath:ActualizarPersonaje.feature");
    }
}
