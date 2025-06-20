import com.intuit.karate.junit5.Karate;

class ObtenerPersonajes {
    static {
        System.setProperty("karate.ssl", "true");
    }
    @Karate.Test
    Karate testBasic() {
        return Karate.run("classpath:ObtenerPersonajes.feature");
    }
}
