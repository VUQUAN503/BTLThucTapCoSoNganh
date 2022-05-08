import com.fashion.dao.ICustomerDAO;
import com.fashion.dao.impl.CustomerDAO;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class Login {

    private ICustomerDAO dao = new CustomerDAO();

    @Test
    void checkLogin()
    {
        Assertions.assertEquals("USER", dao.checkLogin("QUANVU", "quan261202"));
    }
}
