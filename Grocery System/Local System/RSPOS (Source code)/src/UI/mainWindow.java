/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package UI;


import database.dbConnection;
import java.awt.Color;
import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 *
 * @author Dhanuka
 */
public class mainWindow extends javax.swing.JFrame {
public String mw = "none";
public int count=0;


    /**
     * Creates new form mainWindow
     */
    public mainWindow() {
        initComponents();
       // accessLevel();
        
        
        
        
        //show Time
        new Thread(new Runnable() {
   
                    public void run() {
                        while(true){
                            /*Date d = new Date();
                            String date = d.toString();
                            String ar[] = date.split(" ");
                            main_lbl_time.setText(ar[3]);
                            */
                            
                            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd"+" | "+"HH:mm:ss");
                            Date date = new Date();
                            main_lbl_time.setText(dateFormat.format(date));                             
                            //notifyNewOrder(); // error in phpMyadmin "too many connection" 
                            
                        }
                    }
                }).start();
     
      new Thread(new Runnable() {
      
       public void run() {
      while(true){
      
      try {
                Thread.sleep(1000*60*5);
                //your code here...
            } catch (InterruptedException ie) {
            }
                notifyNewOrder();
      
      }
      
      }
      }).start();  
        
       
        notifyExpire();
        notifyLowStock(); 
        //notifyNewOrder();
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jColorChooser1 = new javax.swing.JColorChooser();
        jButton7 = new javax.swing.JButton();
        jLayeredPane1 = new javax.swing.JLayeredPane();
        main_btn_sup = new javax.swing.JButton();
        main_btn_grn = new javax.swing.JButton();
        main_btn_products = new javax.swing.JButton();
        main_btn_stock = new javax.swing.JButton();
        main_btn_purchase = new javax.swing.JButton();
        main_report_btn = new javax.swing.JButton();
        main_btn_logout = new javax.swing.JButton();
        main_btn_notification = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        main_lbl_time = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();

        jButton7.setText("jButton7");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Rajaguru Stores");
        setBackground(new java.awt.Color(204, 255, 204));
        setForeground(new java.awt.Color(255, 255, 204));
        setMinimumSize(new java.awt.Dimension(800, 700));
        setUndecorated(true);
        getContentPane().setLayout(null);

        jLayeredPane1.setBackground(new java.awt.Color(204, 255, 255));
        jLayeredPane1.setForeground(new java.awt.Color(255, 255, 204));
        jLayeredPane1.setMaximumSize(new java.awt.Dimension(700, 500));
        jLayeredPane1.setMinimumSize(new java.awt.Dimension(700, 500));

        javax.swing.GroupLayout jLayeredPane1Layout = new javax.swing.GroupLayout(jLayeredPane1);
        jLayeredPane1.setLayout(jLayeredPane1Layout);
        jLayeredPane1Layout.setHorizontalGroup(
            jLayeredPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 700, Short.MAX_VALUE)
        );
        jLayeredPane1Layout.setVerticalGroup(
            jLayeredPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 500, Short.MAX_VALUE)
        );

        getContentPane().add(jLayeredPane1);
        jLayeredPane1.setBounds(40, 120, 700, 500);

        main_btn_sup.setBackground(new java.awt.Color(204, 204, 255));
        main_btn_sup.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        main_btn_sup.setForeground(new java.awt.Color(0, 0, 153));
        main_btn_sup.setText("supplier");
        main_btn_sup.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        main_btn_sup.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                main_btn_supActionPerformed(evt);
            }
        });
        getContentPane().add(main_btn_sup);
        main_btn_sup.setBounds(270, 70, 100, 35);

        main_btn_grn.setBackground(new java.awt.Color(204, 204, 255));
        main_btn_grn.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        main_btn_grn.setForeground(new java.awt.Color(0, 0, 153));
        main_btn_grn.setText("GRN");
        main_btn_grn.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        main_btn_grn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                main_btn_grnActionPerformed(evt);
            }
        });
        getContentPane().add(main_btn_grn);
        main_btn_grn.setBounds(370, 70, 100, 35);

        main_btn_products.setBackground(new java.awt.Color(204, 204, 255));
        main_btn_products.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        main_btn_products.setForeground(new java.awt.Color(0, 0, 153));
        main_btn_products.setText("Products");
        main_btn_products.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        main_btn_products.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                main_btn_productsActionPerformed(evt);
            }
        });
        getContentPane().add(main_btn_products);
        main_btn_products.setBounds(470, 70, 100, 35);

        main_btn_stock.setBackground(new java.awt.Color(204, 204, 255));
        main_btn_stock.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        main_btn_stock.setForeground(new java.awt.Color(0, 0, 153));
        main_btn_stock.setText("Stock");
        main_btn_stock.setAutoscrolls(true);
        main_btn_stock.setBorderPainted(false);
        main_btn_stock.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        main_btn_stock.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                main_btn_stockActionPerformed(evt);
            }
        });
        getContentPane().add(main_btn_stock);
        main_btn_stock.setBounds(570, 70, 100, 35);

        main_btn_purchase.setBackground(new java.awt.Color(204, 204, 255));
        main_btn_purchase.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        main_btn_purchase.setForeground(new java.awt.Color(0, 0, 153));
        main_btn_purchase.setText("Purchase");
        main_btn_purchase.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        main_btn_purchase.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                main_btn_purchaseActionPerformed(evt);
            }
        });
        getContentPane().add(main_btn_purchase);
        main_btn_purchase.setBounds(170, 70, 100, 35);

        main_report_btn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/reports.png"))); // NOI18N
        main_report_btn.setBorderPainted(false);
        main_report_btn.setContentAreaFilled(false);
        main_report_btn.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        main_report_btn.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/reportsRoll.png"))); // NOI18N
        main_report_btn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                main_report_btnActionPerformed(evt);
            }
        });
        getContentPane().add(main_report_btn);
        main_report_btn.setBounds(70, 20, 35, 35);

        main_btn_logout.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/log_out.png"))); // NOI18N
        main_btn_logout.setBorderPainted(false);
        main_btn_logout.setContentAreaFilled(false);
        main_btn_logout.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        main_btn_logout.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/log_outRoll.png"))); // NOI18N
        main_btn_logout.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                main_btn_logoutActionPerformed(evt);
            }
        });
        getContentPane().add(main_btn_logout);
        main_btn_logout.setBounds(750, 20, 35, 35);

        main_btn_notification.setForeground(new java.awt.Color(255, 255, 255));
        main_btn_notification.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/notification.png"))); // NOI18N
        main_btn_notification.setBorderPainted(false);
        main_btn_notification.setContentAreaFilled(false);
        main_btn_notification.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        main_btn_notification.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        main_btn_notification.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/notificationRoll.png"))); // NOI18N
        main_btn_notification.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                main_btn_notificationActionPerformed(evt);
            }
        });
        getContentPane().add(main_btn_notification);
        main_btn_notification.setBounds(20, 20, 40, 40);

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/customer.png"))); // NOI18N
        jButton1.setBorderPainted(false);
        jButton1.setContentAreaFilled(false);
        jButton1.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jButton1.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/customerRoll.png"))); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(110, 20, 35, 35);

        main_lbl_time.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        getContentPane().add(main_lbl_time);
        main_lbl_time.setBounds(590, 640, 160, 20);

        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/help.png"))); // NOI18N
        jButton2.setBorderPainted(false);
        jButton2.setContentAreaFilled(false);
        jButton2.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jButton2.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/helpRoll.png"))); // NOI18N
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2);
        jButton2.setBounds(700, 20, 35, 35);

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/welcome_screen.jpg"))); // NOI18N
        jLabel2.setBorder(javax.swing.BorderFactory.createMatteBorder(5, 5, 5, 5, new java.awt.Color(0, 0, 0)));
        getContentPane().add(jLabel2);
        jLabel2.setBounds(0, 0, 800, 700);

        setSize(new java.awt.Dimension(800, 699));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void main_btn_supActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_main_btn_supActionPerformed
       supplierDetails a = new supplierDetails();
       jLayeredPane1.removeAll();
       a.setSize(700, 500);
       a.setVisible(true);
       jLayeredPane1.add(a);
       jLayeredPane1.moveToFront(a);
       
    }//GEN-LAST:event_main_btn_supActionPerformed

    private void main_btn_grnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_main_btn_grnActionPerformed
       grnWindow a = new grnWindow();
       jLayeredPane1.removeAll();
       a.setSize(700, 500);
       a.setVisible(true);
       jLayeredPane1.add(a);
       jLayeredPane1.moveToFront(a);
    }//GEN-LAST:event_main_btn_grnActionPerformed

    private void main_btn_productsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_main_btn_productsActionPerformed
       productDetails a = new productDetails();
       jLayeredPane1.removeAll();
       a.setSize(700, 500);
       a.setVisible(true);
       jLayeredPane1.add(a);
       jLayeredPane1.moveToFront(a);
    }//GEN-LAST:event_main_btn_productsActionPerformed

    private void main_btn_stockActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_main_btn_stockActionPerformed
       stockManagement a = new stockManagement();
       jLayeredPane1.removeAll();
       a.setSize(700, 500);
       a.setVisible(true);
       jLayeredPane1.add(a);
       jLayeredPane1.moveToFront(a);
    }//GEN-LAST:event_main_btn_stockActionPerformed

    private void main_btn_purchaseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_main_btn_purchaseActionPerformed
        billing a = new billing();
       jLayeredPane1.removeAll();
       a.setSize(700, 500);
       a.setVisible(true);
       jLayeredPane1.add(a);
       jLayeredPane1.moveToFront(a);
    }//GEN-LAST:event_main_btn_purchaseActionPerformed
   
    private void main_report_btnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_main_report_btnActionPerformed
       reports a = new reports();
       jLayeredPane1.removeAll();
       a.setSize(700, 500);
       a.setVisible(true);
       jLayeredPane1.add(a);
       jLayeredPane1.moveToFront(a);
    }//GEN-LAST:event_main_report_btnActionPerformed

    private void main_btn_logoutActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_main_btn_logoutActionPerformed
          
       if(JOptionPane.showConfirmDialog(null,"Are You sure want to Log out...?","Logout",JOptionPane.YES_NO_OPTION)==0){
       try{
        login log = new login();
        log.setVisible(true);
        this.dispose();
        }catch (Exception ex){
            ex.printStackTrace();
        }
        }
    }//GEN-LAST:event_main_btn_logoutActionPerformed

    private void main_btn_notificationActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_main_btn_notificationActionPerformed
        
        bcolreset(main_btn_notification);
        notificationMain a = new notificationMain();
       jLayeredPane1.removeAll();
       a.setSize(700, 500);
       a.setVisible(true);
       jLayeredPane1.add(a);
       jLayeredPane1.moveToFront(a);
    }//GEN-LAST:event_main_btn_notificationActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        customerDetails stw= new customerDetails();
        stw.setVisible(true);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
      
        try {
            Desktop.getDesktop().open(new File("user_manual.pdf"));
        } catch (IOException ex) {
            Logger.getLogger(reports.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }//GEN-LAST:event_jButton2ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(mainWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(mainWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(mainWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(mainWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new mainWindow().setVisible(true);
                
                
            }
        });
    }
    
    public void notifyLowStock(){
    try{
    Statement con = dbConnection.db().createStatement();
    ResultSet record3 =  con.executeQuery("SELECT product_id FROM stock GROUP BY product_id HAVING SUM(qauntity) <= 10 " ); 
    int qty=0;
    
    while(record3.next()){
        qty++;
    }
    if(qty>0){
     //JOptionPane.showMessageDialog(null,qty+" "+"Product in LOW STOCK");
        count++;
     //bcolred(main_btn_notify);
      bcolred(main_btn_notification);
     //bcolred(notificationMain.lowStockbtn); //doesn't work
     
     try{
     con.executeUpdate("INSERT INTO notification VALUES('0','Low Stock','"+main_lbl_time.getText()+"','"+qty+" "+"Product in LOW STOCK"+"')" );
     }catch(Exception ex){
             JOptionPane.showMessageDialog(null,"MySQL code Error");
             Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
             }
    }
    }catch(Exception ex) {
       Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
    }
    }
    
    
    public void notifyExpire(){
     try{
         
     DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
     Date date = new Date();
     String current_date= dateFormat.format(date);    
         
    Statement con = dbConnection.db().createStatement();
    ResultSet record3 =  con.executeQuery("SELECT * \n" +
                                          "FROM supplied_products\n" +
                                          "WHERE expire_date >=  '"+current_date+"'\n" +
                                          "AND expire_date <= DATE_ADD(  '"+current_date+"', INTERVAL 7 DAY ) " ); 
    
    int qty=0;
    
    while(record3.next()){
        
        Statement con2 = dbConnection.db().createStatement();
        ResultSet record4 =  con2.executeQuery("SELECT COUNT(*) AS total FROM stock WHERE bar_code='"+record3.getString("bar_code")+"' " ); 
            while(record4.next()){
                if(Integer.parseInt(record4.getString("total"))>0){
                    qty++;
                }
            }
    }
    if(qty>0){
     
     //JOptionPane.showMessageDialog(null,qty+" "+"Stock Closing to Expire");
         count++;
//     bcolred(main_btn_notify);
      bcolred(main_btn_notification);
     
     //bcolred(notificationMain.expirebtn);//doesn't work 
     //notificationMain.expirebtn.setBackground(new java.awt.Color(204, 0, 0));// //doesn't work
     
     try{
     con.executeUpdate("INSERT INTO notification VALUES('0','Expire','"+main_lbl_time.getText()+"','"+qty+" "+"Stock Closing to Expire"+"')" );
     }catch(Exception ex){
             JOptionPane.showMessageDialog(null,"MySQL code Error");
             Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
             }
    }
    }catch(Exception ex) {
       Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
    }
    }
    
     public void notifyNewOrder(){
     try{
 
        int qty=0;  
        Statement con2 = dbConnection.db().createStatement();
        ResultSet record4 =  con2.executeQuery("SELECT * FROM order_notify"); 
            while(record4.next()){
                    qty++; 
            }
    
    if(qty>0){
     
     JOptionPane.showMessageDialog(null,qty+" "+"New Order...!");
     count++;
     Statement con3 = dbConnection.db().createStatement();
     con3.executeUpdate("DELETE FROM order_notify");
//     bcolred(main_btn_notify);
        bcolred(main_btn_notification);
     
     //bcolred(notificationMain.expirebtn);//doesn't work 
     //notificationMain.expirebtn.setBackground(new java.awt.Color(204, 0, 0));// //doesn't work
     
     try{
     Statement con4 = dbConnection.db().createStatement();
     con4.executeUpdate("INSERT INTO notification VALUES('0','New Order','"+main_lbl_time.getText()+"','"+qty+" "+"New Order...!"+"')" );
   
     }catch(Exception ex){
             JOptionPane.showMessageDialog(null,"MySQL code Error");
             Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
             }
    }
    }catch(Exception ex) {
       Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
    }
    }
    
    
    /*
    public void showTime(){
    
    GregorianCalendar gcalendar = new GregorianCalendar();

                    String hr = ("" + gcalendar.get(Calendar.HOUR_OF_DAY) + ":");
                    String min = ("" + gcalendar.get(Calendar.MINUTE));
                    
                 
                    String time1 = (hr + min);
               main_lbl_time.setText(time1);
    
    }
    
    public void showDate(){
     GregorianCalendar gcalendar = new GregorianCalendar();

                    String year = ("" + gcalendar.get(Calendar.YEAR) + "/");
                    String month = ("" + gcalendar.get(Calendar.MONTH)+ "/");
                    String date = ("" + gcalendar.get(Calendar.DATE));
                 
                    String date1 = (year + month + date);
               main_lbl_date.setText(date1);
    
    
    
    }
    */
    
    
    
     public void bcolred(JButton a) {
       // a.setBackground(new java.awt.Color(204, 0, 0));
       // a.setForeground(new java.awt.Color(255, 255, 255));
         
         a.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/notificationget.png")));
         a.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/notificationgetRoll.png")));
         a.setText(String.valueOf(count));
    }
    
     
     public void bcolreset(JButton a) {
        //a.setBackground(new java.awt.Color(204,204,255));
       // a.setForeground(new java.awt.Color(0, 0, 153));
         a.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/notification.png")));
         a.setRolloverIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/notificationRoll.png")));
         a.setText("");
    }
     
     public void accessLevel(){
         if(mw.equals("nonadmin")){
             
             main_btn_sup.setEnabled(false);
             main_btn_grn.setEnabled(false);
             main_btn_products.setEnabled(false);
             main_btn_stock.setEnabled(false);
             main_report_btn.setEnabled(false);
         
         }
     
     
     }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton7;
    private javax.swing.JColorChooser jColorChooser1;
    private javax.swing.JLabel jLabel2;
    public static javax.swing.JLayeredPane jLayeredPane1;
    private javax.swing.JButton main_btn_grn;
    private javax.swing.JButton main_btn_logout;
    private javax.swing.JButton main_btn_notification;
    private javax.swing.JButton main_btn_products;
    private javax.swing.JButton main_btn_purchase;
    private javax.swing.JButton main_btn_stock;
    private javax.swing.JButton main_btn_sup;
    public static javax.swing.JLabel main_lbl_time;
    private javax.swing.JButton main_report_btn;
    // End of variables declaration//GEN-END:variables
}
