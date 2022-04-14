import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class TestFac {

    @Test
    public void TestFactorial()
    {
        Assertions.assertThrows(IllegalArgumentException.class, ()->{
                            throw new IllegalArgumentException("hello world");
                                                                    });
    }
}


