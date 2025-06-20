import com.intuit.karate.junit5.Karate;

public class EliminarPersonajes {
    static {
        System.setProperty("karate.ssl", "true");
    }
    @Karate.Test
    Karate testBasic() {
        return Karate.run("classpath:EliminarPersonajes.feature");
    }
}
