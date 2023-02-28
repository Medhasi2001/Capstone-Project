//Write a class to demo the use of constants in Apex

public class DiscountClass {
	Final Decimal regularDiscount=0.05;
    Decimal finalPrice;
    
    public Decimal calculateDiscount(Integer price){
        finalPrice=price-price*regularDiscount;
        return finalPrice;
    }
}