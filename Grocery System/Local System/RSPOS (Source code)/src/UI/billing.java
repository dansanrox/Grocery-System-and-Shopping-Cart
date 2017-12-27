/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UI;
import database.dbConnection; 
import java.awt.print.PrinterException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;/**
 *
 * @author NavinRuvinda
 */
public class billing extends javax.swing.JPanel {

    /**
     * Creates new form billing
     */
    public billing() {
        initComponents();
        drop_stockTemp();
        update_stockTemp();
        billID_update();
        clear(); 
        purchase_bill.setVisible(false);
         
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        purchaseorder_bill_id = new javax.swing.JLabel();
        purchase_txt_barcode = new javax.swing.JTextField();
        purchase_txt_qty = new javax.swing.JTextField();
        purchase_lbl_exName = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        purchase_tbl_cart = new javax.swing.JTable();
        purchase_btn_dlt = new javax.swing.JButton();
        purchase_btn_add = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        purchase_txt_cash = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        purchase_btn_purchase = new javax.swing.JButton();
        jLabel14 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        purchase_lbl_proName = new javax.swing.JLabel();
        purchase_lbl_proPirce = new javax.swing.JLabel();
        purchase_lbl_totalqty = new javax.swing.JLabel();
        purchase_lbl_grandTotal = new javax.swing.JLabel();
        purchase_lbl_balance = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        purchase_lowStock = new javax.swing.JButton();
        purchase_lbl_exDate = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        purchase_bill = new javax.swing.JTextPane();
        jButton1 = new javax.swing.JButton();

        setBackground(new java.awt.Color(234, 234, 254));
        setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        setLayout(null);

        jLabel1.setText("Bill Id");
        add(jLabel1);
        jLabel1.setBounds(80, 90, 50, 14);

        jLabel2.setText("Barcode");
        add(jLabel2);
        jLabel2.setBounds(80, 130, 60, 14);

        jLabel3.setText("Quantity");
        add(jLabel3);
        jLabel3.setBounds(80, 170, 60, 14);

        purchaseorder_bill_id.setBackground(java.awt.SystemColor.activeCaption);
        add(purchaseorder_bill_id);
        purchaseorder_bill_id.setBounds(150, 80, 110, 30);

        purchase_txt_barcode.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                purchase_txt_barcodeActionPerformed(evt);
            }
        });
        purchase_txt_barcode.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                purchase_txt_barcodeKeyPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                purchase_txt_barcodeKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                purchase_txt_barcodeKeyTyped(evt);
            }
        });
        add(purchase_txt_barcode);
        purchase_txt_barcode.setBounds(150, 120, 100, 30);

        purchase_txt_qty.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                purchase_txt_qtyActionPerformed(evt);
            }
        });
        purchase_txt_qty.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                purchase_txt_qtyKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                purchase_txt_qtyKeyTyped(evt);
            }
        });
        add(purchase_txt_qty);
        purchase_txt_qty.setBounds(150, 160, 70, 30);

        purchase_lbl_exName.setText("Expire Date :");
        add(purchase_lbl_exName);
        purchase_lbl_exName.setBounds(500, 130, 70, 14);

        purchase_tbl_cart.setFont(new java.awt.Font("Times New Roman", 0, 12)); // NOI18N
        purchase_tbl_cart.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Barcode", "Item Name", "Price", "Quantity", "Sub Total"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        purchase_tbl_cart.setSelectionMode(javax.swing.ListSelectionModel.SINGLE_SELECTION);
        purchase_tbl_cart.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                purchase_tbl_cartMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(purchase_tbl_cart);
        if (purchase_tbl_cart.getColumnModel().getColumnCount() > 0) {
            purchase_tbl_cart.getColumnModel().getColumn(0).setResizable(false);
        }

        add(jScrollPane2);
        jScrollPane2.setBounds(60, 220, 570, 120);

        purchase_btn_dlt.setText("Delete");
        purchase_btn_dlt.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                purchase_btn_dltActionPerformed(evt);
            }
        });
        add(purchase_btn_dlt);
        purchase_btn_dlt.setBounds(540, 350, 90, 25);

        purchase_btn_add.setText("Add");
        purchase_btn_add.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                purchase_btn_addActionPerformed(evt);
            }
        });
        add(purchase_btn_add);
        purchase_btn_add.setBounds(560, 180, 67, 25);

        jLabel4.setText("Item Name :");
        add(jLabel4);
        jLabel4.setBounds(320, 90, 67, 14);

        jLabel5.setText("Grand Total");
        add(jLabel5);
        jLabel5.setBounds(430, 390, 65, 14);

        jLabel13.setText("Cash");
        add(jLabel13);
        jLabel13.setBounds(90, 390, 40, 14);

        purchase_txt_cash.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                purchase_txt_cashActionPerformed(evt);
            }
        });
        purchase_txt_cash.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                purchase_txt_cashKeyPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                purchase_txt_cashKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                purchase_txt_cashKeyTyped(evt);
            }
        });
        add(purchase_txt_cash);
        purchase_txt_cash.setBounds(140, 380, 116, 30);

        jLabel12.setText("Balance");
        add(jLabel12);
        jLabel12.setBounds(430, 430, 50, 14);

        purchase_btn_purchase.setText("Purchase");
        purchase_btn_purchase.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                purchase_btn_purchaseActionPerformed(evt);
            }
        });
        add(purchase_btn_purchase);
        purchase_btn_purchase.setBounds(290, 450, 110, 35);

        jLabel14.setFont(new java.awt.Font("Arial Black", 0, 18)); // NOI18N
        jLabel14.setText("Purchase ");
        add(jLabel14);
        jLabel14.setBounds(270, 20, 120, 20);

        jLabel6.setText("Price  :");
        add(jLabel6);
        jLabel6.setBounds(320, 130, 50, 14);

        jLabel7.setText("Total Qty.   :");
        add(jLabel7);
        jLabel7.setBounds(320, 170, 70, 14);
        add(purchase_lbl_proName);
        purchase_lbl_proName.setBounds(400, 83, 230, 30);
        add(purchase_lbl_proPirce);
        purchase_lbl_proPirce.setBounds(400, 123, 90, 30);
        add(purchase_lbl_totalqty);
        purchase_lbl_totalqty.setBounds(400, 163, 70, 30);
        add(purchase_lbl_grandTotal);
        purchase_lbl_grandTotal.setBounds(510, 380, 130, 30);
        add(purchase_lbl_balance);
        purchase_lbl_balance.setBounds(510, 420, 130, 30);

        jSeparator1.setOrientation(javax.swing.SwingConstants.VERTICAL);
        add(jSeparator1);
        jSeparator1.setBounds(280, 90, 20, 110);

        purchase_lowStock.setBackground(new java.awt.Color(204, 0, 0));
        purchase_lowStock.setForeground(new java.awt.Color(255, 255, 255));
        purchase_lowStock.setText("LOW \nSTOCK\n");
        add(purchase_lowStock);
        purchase_lowStock.setBounds(530, 80, 130, 35);
        add(purchase_lbl_exDate);
        purchase_lbl_exDate.setBounds(580, 123, 80, 30);

        purchase_bill.setEditable(false);
        purchase_bill.setBorder(null);
        jScrollPane1.setViewportView(purchase_bill);

        add(jScrollPane1);
        jScrollPane1.setBounds(640, 460, 10, 0);

        jButton1.setText("Return");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        add(jButton1);
        jButton1.setBounds(580, 20, 80, 30);
    }// </editor-fold>//GEN-END:initComponents
    private void purchaseorder_itemidKeyReleased(java.awt.event.KeyEvent evt) {  
       
    }
    private void purchase_txt_barcodeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_purchase_txt_barcodeActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_purchase_txt_barcodeActionPerformed

    private void purchase_tbl_cartMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_purchase_tbl_cartMouseClicked

    }//GEN-LAST:event_purchase_tbl_cartMouseClicked

    private void purchase_txt_cashActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_purchase_txt_cashActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_purchase_txt_cashActionPerformed

    private void purchase_btn_dltActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_purchase_btn_dltActionPerformed
        
        if(purchase_tbl_cart.getSelectedRowCount()>0){
        
        try{
        int qty = Integer.parseInt(purchase_tbl_cart.getValueAt(purchase_tbl_cart.getSelectedRow(),3).toString());
        Statement con = dbConnection.db().createStatement();
        ResultSet record =  con.executeQuery("SELECT qauntity FROM stock_temp WHERE bar_code='"+purchase_tbl_cart.getValueAt(purchase_tbl_cart.getSelectedRow(),0)+"'" );
        while(record.next()){      
        int newTotalqty = Integer.parseInt(record.getString("qauntity"))+qty;    
        con.executeUpdate("UPDATE stock_temp SET qauntity='"+newTotalqty+"' WHERE bar_code='"+purchase_tbl_cart.getValueAt(purchase_tbl_cart.getSelectedRow(),0)+"'");
        }
        
        }catch(Exception ex){
             Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        removeRows();
        clear();
        grandTotal();
        purchase_txt_barcode.setText("");
        purchase_lbl_balance.setText("");
        purchase_txt_cash.setText("");
        }else{
        JOptionPane.showMessageDialog(null, "Please select an Item in the table");
        }
    }//GEN-LAST:event_purchase_btn_dltActionPerformed

    private void purchase_txt_barcodeKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_purchase_txt_barcodeKeyReleased
        
         try{
         Statement con = dbConnection.db().createStatement();
       
         ResultSet record =  con.executeQuery("SELECT * FROM supplied_products WHERE bar_code='"+purchase_txt_barcode.getText()+"'" );    
             
         while(record.next()){
             purchase_lbl_exDate.setText(record.getString("expire_date"));
                     
         String proID = record.getString("product_id");
         ResultSet record2 =  con.executeQuery("SELECT * FROM products WHERE product_id='"+proID+"'" );
           
         while(record2.next()){ 
              purchase_lbl_proName.setText(record2.getString("product_name"));
              purchase_lbl_proPirce.setText(record2.getString("product_price"));
           }
         
         ResultSet record3 =  con.executeQuery("SELECT SUM(qauntity) AS Total_qty FROM stock_temp  WHERE product_id='"+proID+"'" ); 
          
         while(record3.next()){ 
              purchase_lbl_totalqty.setText(record3.getString("Total_qty"));
           }
        
         if(Integer.parseInt(purchase_lbl_totalqty.getText())<=10){
         purchase_lowStock.setVisible(true);
         }
          
         DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
         Date date = new Date();
         if( purchase_lbl_exDate.getText().equals(dateFormat.format(date)) ){
             bcolred(purchase_lbl_exDate);
             bcolred(purchase_lbl_exName);
         }
             }
         
         }catch (Exception ex) {
            Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
        }
         
          if(evt.getKeyChar() == 10){
        purchase_txt_qty.grabFocus();
        }
         
        
        
    }//GEN-LAST:event_purchase_txt_barcodeKeyReleased

    private void purchase_txt_barcodeKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_purchase_txt_barcodeKeyPressed
       clear();
    }//GEN-LAST:event_purchase_txt_barcodeKeyPressed

    private void purchase_btn_addActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_purchase_btn_addActionPerformed
        
         int tryval = BillAddnullValidate();
       
       if(tryval == 0){ 
           
            int tryval2 = BARCODEexsistValidate();
            
            if (tryval2 ==0){
           
            int tryval3 = BILLcontentValidate();
            
               if(tryval3 == 0){
        
                  int tryval4 = isMin();
                   
                   if(tryval4 == 0){
        
        try {
            DefaultTableModel table = (DefaultTableModel) purchase_tbl_cart.getModel();
            
            
            double unitPrice = Double.valueOf(purchase_lbl_proPirce.getText());
            double total = 0.00;
            int qty = Integer.parseInt(purchase_txt_qty.getText());
            
            
            total = unitPrice*qty;
            Vector rc = new Vector();
            rc.add(purchase_txt_barcode.getText());
            rc.add(purchase_lbl_proName.getText());
            rc.add(purchase_lbl_proPirce.getText());
            rc.add(purchase_txt_qty.getText());
            rc.add(total);
            table.addRow(rc);
            
            
            
            Statement con = dbConnection.db().createStatement();
            ResultSet record = con.executeQuery("SELECT * FROM stock_temp WHERE bar_code='"+purchase_txt_barcode.getText()+"'");
            while(record.next()){
            int newTotalqty = Integer.parseInt(record.getString("qauntity"))-qty;    
            con.executeUpdate("UPDATE stock_temp SET qauntity='"+newTotalqty+"' WHERE bar_code='"+purchase_txt_barcode.getText()+"'");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
     
     purchase_txt_barcode.setText("");
     purchase_txt_qty.setText("");
                   }
                   }
            }
       }
     purchase_lbl_grandTotal.setText("");
     grandTotal();
     
        
    }//GEN-LAST:event_purchase_btn_addActionPerformed

    private void purchase_txt_cashKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_purchase_txt_cashKeyPressed
        purchase_lbl_balance.setText("");
    }//GEN-LAST:event_purchase_txt_cashKeyPressed

    private void purchase_txt_cashKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_purchase_txt_cashKeyReleased
        
        double cash = Double.valueOf(purchase_txt_cash.getText());
        double grndTotal = Double.valueOf(purchase_lbl_grandTotal.getText());
        double balance = cash - grndTotal;
        
        purchase_lbl_balance.setText(String.valueOf(balance));
        
    }//GEN-LAST:event_purchase_txt_cashKeyReleased

    private void purchase_btn_purchaseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_purchase_btn_purchaseActionPerformed
       
         if (purchase_txt_cash.getText().equals("") || purchase_txt_cash.getText() == null ) {
            
            JOptionPane.showMessageDialog(null, "You have missed to fill Cash...", "Error", 1);
            purchase_txt_cash.grabFocus();
         }
        
         else{
                
                 if(isDouble(purchase_txt_cash.getText()) == false){
                  JOptionPane.showMessageDialog(null, "Invalid Cash value...");
                    purchase_txt_cash.grabFocus();
                 }  
                 
                 else{
                       double min  = Double.parseDouble(purchase_txt_cash.getText()) ;
                     
                       if(min<0){
                        JOptionPane.showMessageDialog(null, "Invalid Cash value...");
                    purchase_txt_cash.grabFocus();
                       }
                       
                       else{
                           
                             
                            
                             if(purchase_lbl_grandTotal.getText().equals("") || purchase_lbl_grandTotal.getText() == null){
                        JOptionPane.showMessageDialog(null, "First add some values to the table...");
                    
                       }
                             
                             else{
/////////////            
                     if(Double.valueOf(purchase_txt_cash.getText())<Double.valueOf(purchase_lbl_grandTotal.getText())){
                      JOptionPane.showMessageDialog(null, "Please enter the Minimum Cash");
                    purchase_txt_cash.grabFocus();
                   }else{
            
            
            
            try{
            Statement con = dbConnection.db().createStatement();
            con.executeUpdate("INSERT INTO transactions VALUES('0','"+mainWindow.main_lbl_time.getText()+"','"+purchase_lbl_grandTotal.getText()+"')"); //have to chage Date and Time
            
           
            
            for (int x = 0; x < purchase_tbl_cart.getRowCount(); x++) {
                
            //insert purchased details to DB    
            Statement con2 = dbConnection.db().createStatement();
            con2.executeUpdate("INSERT INTO purchased_products VALUES('"+purchaseorder_bill_id.getText()+"' , '"+purchase_tbl_cart.getValueAt(x, 0)+"' , '"+purchase_tbl_cart.getValueAt(x, 3)+"' , '"+purchase_tbl_cart.getValueAt(x, 4)+"' )"); 
            
            //update main stock table
            ResultSet record = con2.executeQuery("SELECT * FROM stock WHERE bar_code='"+purchase_tbl_cart.getValueAt(x, 0)+"'");
            int qty = Integer.parseInt(purchase_tbl_cart.getValueAt(x, 3).toString());
            while(record.next()){
            int newTotalqty = Integer.parseInt(record.getString("qauntity"))-qty;   
             Statement con3 = dbConnection.db().createStatement();
             con3.executeUpdate("UPDATE stock SET qauntity='"+newTotalqty+"' WHERE bar_code='"+purchase_tbl_cart.getValueAt(x, 0)+"'");
            }
            
            }
            
            JOptionPane.showMessageDialog(null, "Successfully Purchased"); 
            }catch(Exception e) {
                 JOptionPane.showMessageDialog(null, "Error"); 
            System.out.println(e);
        }
            
            purchase_bill();// calling printing method
            
            //clearing
            clear();
            purchase_lbl_grandTotal.setText("");
            purchase_lbl_balance.setText("");
            purchase_txt_cash.setText("");
            purchase_txt_barcode.setText("");
            billID_update();
            removeAllrows();
            
        }
                     /////////////
                             }
                       }
                 }
    }
    }//GEN-LAST:event_purchase_btn_purchaseActionPerformed

    private void purchase_txt_qtyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_purchase_txt_qtyActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_purchase_txt_qtyActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
       returnProducts rpw= new returnProducts();
       rpw.setVisible(true);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void purchase_txt_barcodeKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_purchase_txt_barcodeKeyTyped
       if(evt.getKeyChar() == 22){
         purchase_txt_barcode.setText("");
        }
        
        if(evt.getKeyChar() == 34 || evt.getKeyChar() == 39){
        evt.consume();
        }
    }//GEN-LAST:event_purchase_txt_barcodeKeyTyped

    private void purchase_txt_qtyKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_purchase_txt_qtyKeyTyped
        if(evt.getKeyChar() == 22){
         purchase_txt_qty.setText("");
        }
        
        if(evt.getKeyChar() == 34 || evt.getKeyChar() == 39){
        evt.consume();
        }
    }//GEN-LAST:event_purchase_txt_qtyKeyTyped

    private void purchase_txt_qtyKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_purchase_txt_qtyKeyReleased
     if(evt.getKeyChar() == 10){
         purchase_btn_add.grabFocus();
        }
    }//GEN-LAST:event_purchase_txt_qtyKeyReleased

    private void purchase_txt_cashKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_purchase_txt_cashKeyTyped
        if(evt.getKeyChar() == 22){
         purchase_txt_cash.setText("");
        }
        
        if(evt.getKeyChar() == 34 || evt.getKeyChar() == 39){
        evt.consume();
        }
    }//GEN-LAST:event_purchase_txt_cashKeyTyped
    private void purchaseorder_dateActionPerformed(java.awt.event.ActionEvent evt) {                                                   
        // TODO add your handling code here:
    } 
    
     public void billID_update(){
  
          try {
            Statement con = dbConnection.db().createStatement();
            java.sql.ResultSet next_billID = con.executeQuery("SELECT MAX(transaction_id)+1 FROM transactions");
            while (next_billID.next()) {
                if(next_billID.getString(1) == null){
                    purchaseorder_bill_id.setText("1");
                }else{
                   purchaseorder_bill_id.setText(next_billID.getString("MAX(transaction_id)+1"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
  
  }
    public void removeRows(){
       DefaultTableModel table = (DefaultTableModel) purchase_tbl_cart.getModel();
        int slectedRows [] = purchase_tbl_cart.getSelectedRows();
        
        for(int i=0;i<slectedRows.length;i++){
            table.removeRow(slectedRows[i]-i);
          }
    } 
     
    public void clear(){
    
    purchase_lbl_proName.setText("");
    purchase_lbl_proPirce.setText("");
    purchase_lbl_totalqty.setText("");
    purchase_txt_qty.setText("");
    purchase_lbl_exDate.setText("");
    purchase_lowStock.setVisible(false);
    bcolreset(purchase_lbl_exDate);
    bcolreset(purchase_lbl_exName);
    
    }
    
    public void grandTotal(){
    
    double total = 0.0;

        for (int x = 0; x < purchase_tbl_cart.getRowCount(); x++) {
            total += Double.valueOf(String.valueOf(purchase_tbl_cart.getValueAt(x, 4)));
        }

        purchase_lbl_grandTotal.setText(String.valueOf(total));
    }
    
    public void removeAllrows(){
    DefaultTableModel table = (DefaultTableModel) purchase_tbl_cart.getModel();
    table.setRowCount(0);
    }
    
    //create tempory stock table
  public void update_stockTemp(){
   
   try {
            Statement con = dbConnection.db().createStatement();
            con.executeUpdate("CREATE TABLE stock_temp LIKE stock" );
            con.executeUpdate("INSERT INTO stock_temp SELECT * FROM stock ");
   } catch (Exception ex) {
            Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
        }
   }
 //drop tempory stock table
public void drop_stockTemp(){
   
   try {
            Statement con = dbConnection.db().createStatement();
            con.executeUpdate("DROP TABLE stock_temp" );
   } catch (Exception ex) {
            Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
        }
   
   
   }
 public void bcolred(JLabel a) {
        
        a.setForeground(new java.awt.Color(204, 0, 0));
    }
 
     
     public void bcolreset(JLabel a) {
       
        a.setForeground(new java.awt.Color(0, 0, 0));
    }

     public int  BillAddnullValidate(){
          
           if (purchase_txt_barcode.getText().equals("") || purchase_txt_barcode.getText() == null ) {
            
            JOptionPane.showMessageDialog(null, "You have missed Barcode...", "Error", 1);
            purchase_txt_barcode.grabFocus();
            return 1 ;

        } else if ( purchase_txt_qty.getText().equals("") || purchase_txt_qty.getText() == null) {
           
            JOptionPane.showMessageDialog(null, "You have missed Quantity...", "Error", 1);
            purchase_txt_qty.grabFocus();
            return 1 ;
            
        
            
        }else {
          return 0 ;
        }
        
           
      
      }
     
      public int  BARCODEexsistValidate(){
        int total1 =0;
        try {            
            
            Statement con = dbConnection.db().createStatement();
                               //make sure again...
            java.sql.ResultSet record = con.executeQuery("SELECT COUNT(*) AS totalRow FROM stock WHERE bar_code ='"+purchase_txt_barcode.getText()+"'");
           
            while (record.next()) {
              total1 = Integer.parseInt(record.getString("totalRow"));
               
               
            }
            
        } catch (Exception e) {
             JOptionPane.showMessageDialog(null, "code error...");
        }
        if(total1 >0){
            
        return 0;
        }
        else{
           JOptionPane.showMessageDialog(null, "Invalid Barcode...!");
           purchase_txt_barcode.grabFocus();
        return 1;
        }
    }
      
       public int  BILLcontentValidate(){
        
         boolean val1 = isDouble(purchase_txt_qty.getText());
        
         
           if (val1 == false ) {
            
            JOptionPane.showMessageDialog(null, "Invalid Quantity...");
          purchase_txt_qty.grabFocus();
            return 1 ;
           
           } else if(Integer.parseInt(purchase_txt_qty.getText())>Integer.parseInt(purchase_lbl_totalqty.getText())){
         JOptionPane.showMessageDialog(null, "Please enter the quantity lower than Total Qty."); 
         purchase_txt_qty.grabFocus();
         return 1 ;
        
            
           } else  {
             return 0 ;
            
          }
       }

      
      public boolean isDouble(String s) {
    try { 
        Double.parseDouble(s); 
    } catch(NumberFormatException e) { 
        return false; 
    }
    // only got here if we didn't return false
    return true;
}

      public int isMin(){
      
            double tryval6  = Double.parseDouble(purchase_txt_qty.getText()) ;
             
            if(tryval6 <0){
               JOptionPane.showMessageDialog(null, "Invalid Quantity...");
          purchase_txt_qty.grabFocus();
          return 1;
            }
            
            else{  
            return 0 ;
            }
      }
      
      
    public void purchase_bill(){
      
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd"+"    "+"HH:mm:ss");
                            Date date = new Date();
      
        String table="";
        for (int x = 0; x < purchase_tbl_cart.getRowCount(); x++) {            
              table += "<tr align=\"right\">\n";
              table +=  "\n";
              table +=   "<td>"+purchase_tbl_cart.getValueAt(x, 0)+"</td>\n";
              table +=   "<td>"+purchase_tbl_cart.getValueAt(x, 1)+"</td>\n"; 
              table +=   "<td>"+purchase_tbl_cart.getValueAt(x, 2)+"</td>\n"; 
              table +=   "<td>"+purchase_tbl_cart.getValueAt(x, 3)+"</td>\n"; 
              table +=   "<td>"+purchase_tbl_cart.getValueAt(x, 4)+"</td>\n"; 
              table +=   "</tr>\n";
     }   
          System.out.println(table);
        
         purchase_bill.setContentType("text/html");
        purchase_bill.setText("<html><body>\n" +
"<table border=\"0\" width=\"400\" height=\"150\" align=\"center\">\n" +
"\n" +
"<tr align=\"center\"><td  colspan=\"5\" align=\"center\" style=\"font-size:25px\"><u>Rajaguru Stores</u></td></tr>"+
"<tr height=\"16px\"></tr>"+
"<tr ><td width=\"20%\">Date/Time :</td><td width=\"25%\">"+dateFormat.format(date) +"</td><td></td><td><p align=\"right\" >Bill ID :</p></td ><td align=\"right\">"+purchaseorder_bill_id.getText()+"</td></tr>"+
"<tr height=\"16px\"></tr>"+
"<tr align=\"right\" style=\"background-color:grey\">\n" +
"<td><h2>Barcode</h2></td>\n" +
"<td><h2>Item</h2></td>\n" +
"<td><h2>Price</h2></td>\n" +
"<td><h2>Quantity</h2></td>\n" +
"<td><h2>Amount</h2></td>\n" +
"</tr>\n"+
"<tr height=\"13px\"></tr>"
     +table+                  
"\n" +
"<tr height=\"20px\"></tr>"+               
"<tr><td colspan=\"4\"><h2 align=\"right\">Total :</h2></td>"+
"<td align=\"right\">"+purchase_lbl_grandTotal.getText()+"</td></tr>"+ 
"<tr><td colspan=\"4\"><p align=\"right\">Cash :</p></td>"+
"<td align=\"right\">"+purchase_txt_cash.getText()+"</td></tr>"+ 
"<tr><td colspan=\"4\"><p align=\"right\">Balance :</p></td>"+
"<td align=\"right\">"+purchase_lbl_balance.getText()+"</td></tr>"+ 
"<tr height=\"25\"></tr>\n" +
"<tr ><td colspan=\"5\"><p align=\"left\" style=\"font-size:5px\">Rajaguru Stores, No:123, Temple Road, Malabe.</p></td></tr>\n" +
"<tr ><td colspan=\"5\"><p align=\"left\" style=\"font-size:5px\">Tel : 0112345678 , 0712345677</p></td></tr>\n" +
"<tr ><td colspan=\"5\"><p align=\"left\" style=\"font-size:5px\">Email : rajagurustores@gmail.com </p></td></tr>"+
"<tr ><td colspan=\"5\"><p align=\"left\" style=\"font-size:5px\">www.rajagurustores.com </p></td></tr>"+
"</table>\n" +
"</body>\n" +
"</html>");
        try {
            purchase_bill.print();
        } catch (PrinterException ex) {
            Logger.getLogger(mainWindow.class.getName()).log(Level.SEVERE, null, ex);
        }
      }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JTextPane purchase_bill;
    private javax.swing.JButton purchase_btn_add;
    private javax.swing.JButton purchase_btn_dlt;
    private javax.swing.JButton purchase_btn_purchase;
    private javax.swing.JLabel purchase_lbl_balance;
    private javax.swing.JLabel purchase_lbl_exDate;
    private javax.swing.JLabel purchase_lbl_exName;
    private javax.swing.JLabel purchase_lbl_grandTotal;
    private javax.swing.JLabel purchase_lbl_proName;
    private javax.swing.JLabel purchase_lbl_proPirce;
    private javax.swing.JLabel purchase_lbl_totalqty;
    private javax.swing.JButton purchase_lowStock;
    private javax.swing.JTable purchase_tbl_cart;
    private javax.swing.JTextField purchase_txt_barcode;
    private javax.swing.JTextField purchase_txt_cash;
    private javax.swing.JTextField purchase_txt_qty;
    private javax.swing.JLabel purchaseorder_bill_id;
    // End of variables declaration//GEN-END:variables
}
