package shop.goodstudy.mall.cart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import shop.goodstudy.mall.cart.model.Cart;

@Mapper
public interface CartMapper {

	int create(Cart c);
	List<Cart> getList(String id);
	
}
