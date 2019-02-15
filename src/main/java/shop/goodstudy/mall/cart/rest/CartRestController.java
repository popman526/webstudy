package shop.goodstudy.mall.cart.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;

import shop.goodstudy.mall.cart.model.Cart;
import shop.goodstudy.mall.cart.service.CartService;
import shop.goodstudy.mall.customer.model.Customer;

@RestController
public class CartRestController {

	@Autowired private CartService cartService;
	
	/** 카트에 등록 **/
	@PostMapping("cart")
	public boolean postCart(@ModelAttribute Cart c) {
		return cartService.create(c);
	}
	
	/** 카트 수정 **/
	@PutMapping("cart")
	public boolean putCart(@RequestParam int buyCount, @RequestParam long product_id
			,@SessionAttribute Customer customer) {
		System.out.println("count: " + buyCount);
		System.out.println("id: " + product_id);
		return true;
	}
	
}
