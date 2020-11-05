package com.eshop.database;

import java.sql.*;
import java.util.ArrayList;

import com.eshop.product.Product;

public class Database {

    static Connection conn = null;

    public static Connection getConn() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException e) {
            System.out.println(e.toString());
        }

        try{
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/eshopdb","root","root");
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return conn;

    }

    public static boolean checkIfBarcodeExists(String bar){

        String sql = "SELECT barcode FROM products WHERE barcode = ?";
        try {
            conn = getConn();
            PreparedStatement p = conn.prepareStatement(sql);
            p.setString(1,bar);
            ResultSet r =p.executeQuery();
            while(r.next()){
                if(bar.equals(r.getString("barcode"))){
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;


    }

    public static void insertProduct(Product pr){
        String sql = "INSERT INTO products(barcode,name,color,description) VALUES(?,?,?,?)";
        try{

            conn = getConn();
            PreparedStatement p = conn.prepareStatement(sql);
            p.setString(1, pr.getBarcode());
            p.setString(2, pr.getName());
            p.setString(3, pr.getColor());
            p.setString(4, pr.getDescription());
            p.executeUpdate();

            conn.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<String> allProducts(){
        ArrayList<String> list = new ArrayList<>();
        String sql = "SELECT * FROM products";
        try{
            conn = getConn();
            PreparedStatement p = conn.prepareStatement(sql);
            ResultSet r =p.executeQuery();
            while(r.next()){
                list.add(r.getString("id"));
                list.add(r.getString("barcode"));
                list.add(r.getString("name"));
                list.add(r.getString("color"));
                list.add(r.getString("description"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

}

