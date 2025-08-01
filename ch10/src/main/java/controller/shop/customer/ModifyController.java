package controller.shop.customer;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.shop.CustomerDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.shop.CustomerService;

@WebServlet("/shop/customer/modify.do")
public class ModifyController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private CustomerService service = CustomerService.INSTANCE;

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    
 // GET: 수정 폼 보여주기
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cid = req.getParameter("cid");
        if (cid == null || cid.trim().isEmpty()) {
            resp.sendRedirect("/ch10/shop/customer/list.do");
            return;
        }

        CustomerDTO dto = service.findById(cid);
        if (dto == null) {
            resp.sendRedirect("/ch10/shop/customer/list.do");
            return;
        }

        req.setAttribute("customerDTO", dto);
        req.getRequestDispatcher("/WEB-INF/views/shop/customer/modify.jsp").forward(req, resp);
    }
    
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String cid = req.getParameter("cid");
        String name = req.getParameter("name");
        String hp = req.getParameter("hp");
        String address = req.getParameter("address");

        CustomerDTO dto = new CustomerDTO();
        dto.setCid(cid);
        dto.setName(name);
        dto.setHp(hp);
        dto.setAddress(address);

        logger.info("Modify 요청 DTO : " + dto);

        try {
            service.modify(dto);
            resp.sendRedirect("/ch10/shop/customer/list.do");
        } catch (Exception e) {
            logger.error("수정 중 오류 발생", e);
            req.setAttribute("errorMsg", "수정 실패: " + e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/shop/customer/modify.jsp").forward(req, resp);
        }
    }
}
