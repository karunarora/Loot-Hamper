package com.cart;
import java.util.*;
import java.sql.*;


public class Cart 
{
	private String brand;
	private String model;
	private int price;
        private String image;
	private String description;
	private int[] action;
	private ArrayList<CartItem> al;

   

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
	
	
	public ArrayList<CartItem> addtocart(CartItem items, ArrayList<CartItem> al)
	{
		if(al.isEmpty())
		{
			al=new ArrayList<CartItem>();			
		}
		boolean b=al.add(items);
		System.out.println("cart is added :"+b);
		setCart(al);
		return al;				
	}
	
	
	public ArrayList removecart(int index,ArrayList al)
	{
		al.remove(index);
		return al;
		
	}

	public ArrayList<CartItem> update_cart(int quantity, int index,ArrayList<CartItem> al)
	{
		CartItem ci=al.get(index);
	
		al.set(index, ci);
		return al;

	}
	
	
	public void setCart(ArrayList<CartItem> al)
	{
		if(al.isEmpty())
		{
			al=new ArrayList<CartItem>();			
		}
		this.al=al;		
	}
	
	public ArrayList<CartItem> getCart()
	{
		
		return al;
	}


	
	public boolean savecart(ArrayList<CartItem> al,int id)
	{
		try
		{
			Connection con=null;
                                                Statement st=null;
                                                
                                            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                con=DriverManager.getConnection("jdbc:sqlserver://localhost;Instance=SQLExpress;Database=Project;user=Project;Password=123");
                                st=con.createStatement();  
			
			Iterator it=al.iterator();
			ResultSet rs=st.executeQuery("select * from cart where id="+id+"");
			

			while(it.hasNext())
			{
				System.out.println("saving data");
				CartItem ci=(CartItem)it.next();
				
				//int n=st.executeUpdate("insert into cart values('"+name+"','"+model+"','"+ci.getName()+"','"+ci.getModel()+"',"+ci.getPrice()+") ");
			
			}
			
			return true;
			
			
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
		
		
	}

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }



	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public ArrayList<CartItem> getAl() {
		return al;
	}


	public void setAl(ArrayList<CartItem> al) {
		this.al = al;
	}


	public void setAction(int[] action) {
		this.action = action;
	}


	public int[] getAction() {
		return action;
	}

}
