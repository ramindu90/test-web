package org.mlcr.jobfind.utils;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.sql.*;

/**
 * Created by Ramindu on 7/15/16.
 */
public class Util {
    public static byte[] convertToBase64(String resourceName) {
        try {
            ClassLoader classloader = Thread.currentThread().getContextClassLoader();
            InputStream is = classloader.getResourceAsStream(resourceName);
            BufferedImage image = ImageIO.read(is);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write( image, "png", baos );
            baos.flush();
            byte[] imageInByte = baos.toByteArray();
            baos.close();
            return imageInByte;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }


    public static JSONArray getJobs() {
        //test objects
        JSONArray jsonArray = new JSONArray();
        JSONObject jsonObject = new JSONObject();
        try {

            JSONArray jsonArray1 = getImagesFromDatabase();


            jsonObject.put("specification", "Web Designer");
            jsonObject.put("company", jsonArray1.getJSONObject(0).getString("company"));
            jsonObject.put("location", "San Franciso, USA");
            jsonObject.put("salary", "$14000");
            jsonObject.put("vacancyType", "Full Time");
            jsonObject.put("companyLogo", jsonArray1.getJSONObject(0).getString("companyLogo"));
            jsonArray.put(jsonObject);


            jsonObject = new JSONObject();
            jsonObject.put("specification", "Web Designer");
            jsonObject.put("company", jsonArray1.getJSONObject(1).getString("company"));
            jsonObject.put("location", "San Franciso, USA");
            jsonObject.put("salary", "$14000");
            jsonObject.put("vacancyType", "Full Time");
            jsonObject.put("companyLogo", jsonArray1.getJSONObject(1).getString("companyLogo"));
//            jsonObject.put("companyLogo", IOUtils.toByteArray(in));
            jsonArray.put(jsonObject);

            jsonObject = new JSONObject();
            jsonObject.put("specification", "Software Designer");
            jsonObject.put("company", jsonArray1.getJSONObject(2).getString("company"));
            jsonObject.put("location", "Borella, USA");
            jsonObject.put("salary", "$15000");
            jsonObject.put("vacancyType", "Part Time");
//            in = classloader.getResourceAsStream("/img/job-logo3.jpg");
            jsonObject.put("companyLogo", jsonArray1.getJSONObject(2).getString("companyLogo"));
            jsonArray.put(jsonObject);

            jsonObject = new JSONObject();
            jsonObject.put("specification", "Software Designer");
            jsonObject.put("company", jsonArray1.getJSONObject(3).getString("company"));
            jsonObject.put("location", "Paliyagoda, Sri Lanka");
            jsonObject.put("salary", "$11000");
            jsonObject.put("vacancyType", "Volunteer");
//            in = classloader.getResourceAsStream("/img/job-logo1.jpg");
            jsonObject.put("companyLogo", jsonArray1.getJSONObject(3).getString("companyLogo"));
            jsonArray.put(jsonObject);

        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jsonArray;
    }

    public static JSONArray getImagesFromDatabase(){
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "jobFind";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "root";

        JSONArray jsonArray = new JSONArray();
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url+dbName,userName,password);
            System.out.println("Connected to the database");

            String sql="select * from imagesTable";
            PreparedStatement pst=conn.prepareStatement(sql);

            ResultSet resultSet = pst.executeQuery();
            while(resultSet.next()) {
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("company", resultSet.getString("company"));
                jsonObject.put("companyLogo", resultSet.getString("image"));
                jsonArray.put(jsonObject);
            }
            return jsonArray;

        } catch (Exception e) {
            System.out.println("NO CONNECTION =(");
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            System.out.println("Disconnected from database");
        }
        return null;
    }

    public static void main(String args[]) {
        getJobs();
    }

    public static void storeImagesInDatabase(){

        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "jobFind";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "root";
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url+dbName,userName,password);
            System.out.println("Connected to the database");

            File imgFile = new File("/Users/Ramindu/git/mlcr/test-web/src/main/webapp/META-INF/resources/img/job-logo3.png");
            byte[] fileContent = Files.readAllBytes(imgFile.toPath());
            String base64ImageString = Base64.encode(fileContent);

            String sql="insert into imagesTable (company,image) values (?, ?)";
            PreparedStatement pst=conn.prepareStatement(sql);
            pst.setString(1, "virtusa");
            pst.setString(2, base64ImageString);

            pst.executeUpdate();

        } catch (Exception e) {
            System.out.println("NO CONNECTION =(");
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            System.out.println("Disconnected from database");
        }


    }
}
