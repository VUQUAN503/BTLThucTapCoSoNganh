import com.fashion.dao.impl.ProductDAO;
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

    @Test
    public void TestGetProduct()
    {
        Assertions.assertEquals(3, new ProductDAO().getThreeItemsByCategoryID(1, 0).size());
    }
}


