/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ptit.view;

import java.awt.Color;
import java.awt.Component;
import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import ptit.DAO.ProblemDAO;
import ptit.DAO.SubmissionDAO;
import ptit.DAO.UserDAO;
import ptit.model.Problem;
import ptit.model.Submission;
import ptit.model.User;
import ptit.model.Client;

/**
 *
 * @author datnvt
 */

class BackgroundMonitor implements Runnable {
    private MainFrm Frm;
    
    public BackgroundMonitor(MainFrm frm) throws IOException {
        this.Frm= frm;
    }

    @Override
    public void run() {
        while (true) {
            try {
                this.Frm.initSubmissionList();
                this.Frm.initScoreboard();
                Thread.sleep(3000);
            } catch (InterruptedException ex) {
                Logger.getLogger(BackgroundMonitor.class.getName()).log(Level.SEVERE, null, ex);
            } 
        }
    } 
}

public class MainFrm extends JFrame implements ActionListener{
    private javax.swing.JButton btnButton;
    private javax.swing.JButton btnLogout;
    private javax.swing.JButton btnSubmit;
    private javax.swing.JComboBox<String> cbLanguage;
    private javax.swing.JComboBox<String> cbProblem;
    private javax.swing.JScrollPane jScrollProblem;
    private javax.swing.JScrollPane jScrollScoreboard;
    private javax.swing.JScrollPane jScrollviewtest;
    private javax.swing.JLabel lblFiletoUpload;
    private javax.swing.JPanel pnlProblem;
    private javax.swing.JPanel pnlscoreboard;
    private javax.swing.JPanel pnlviewtestrun;
    private javax.swing.JTable tblScoreboard;
    private javax.swing.JTable tblViewtest;
    private javax.swing.JTabbedPane threetab;
    private javax.swing.JTextField txtFilepath;
    private javax.swing.JLabel txtHello;
    private javax.swing.JLabel txtLanguage;
    private javax.swing.JLabel txtName;
    private javax.swing.JTextArea txtProblem;
    private javax.swing.JLabel txtproblemName;
    private ArrayList <Problem> probs;
    private ArrayList <Submission> subList;
    private ArrayList <User> userList;
    private int problem_idx;
    private int language_idx;
    private User _user;
    private Client client;
    private BackgroundMonitor automaticUp;
    
    public MainFrm(User user) throws IOException {
        txtHello = new javax.swing.JLabel();
        txtName = new javax.swing.JLabel();
        btnLogout = new javax.swing.JButton();
        threetab = new javax.swing.JTabbedPane();
        pnlProblem = new javax.swing.JPanel();
        txtproblemName = new javax.swing.JLabel();
        cbProblem = new javax.swing.JComboBox<>();
        jScrollProblem = new javax.swing.JScrollPane();
        txtProblem = new javax.swing.JTextArea();
        lblFiletoUpload = new javax.swing.JLabel();
        txtFilepath = new javax.swing.JTextField();
        btnButton = new javax.swing.JButton();
        txtLanguage = new javax.swing.JLabel();
        cbLanguage = new javax.swing.JComboBox<>();
        btnSubmit = new javax.swing.JButton();
        pnlviewtestrun = new javax.swing.JPanel();
        jScrollviewtest = new javax.swing.JScrollPane();
        tblViewtest = new javax.swing.JTable();
        pnlscoreboard = new javax.swing.JPanel();
        jScrollScoreboard = new javax.swing.JScrollPane();
        tblScoreboard = new javax.swing.JTable();
        this._user = user;
        this.problem_idx = -1;
        this.language_idx = -1;
        this.automaticUp = new BackgroundMonitor(this);
        Thread up = new Thread(automaticUp);
        up.start();
        this.client = new Client("192.168.43.192", 8002);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
//        this.setLocationRelativeTo(null);
        txtHello.setText("Hello,");
        
        txtName.setText(this._user.getFullName());

        btnLogout.setText("Logout");
        btnLogout.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLogoutActionPerformed(evt);
            }
        });

        txtproblemName.setText("Problem");
        txtProblem.setEditable( false );
        
        this.initProblemList();
        this.initSubmissionList();
        this.initScoreboard();
        
        cbProblem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbProblemActionPerformed(evt);
            }
        });

        txtProblem.setColumns(20);
        txtProblem.setRows(5);
        jScrollProblem.setViewportView(txtProblem);

        lblFiletoUpload.setText("File to upload");

        btnButton.setText("Browser");
        btnButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnButtonActionPerformed(evt);
            }
        });        

        txtLanguage.setText("Language:");

        cbLanguage.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "C++", "Java" }));
        cbLanguage.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbLanguageActionPerformed(evt);
            }
        });
        
        btnSubmit.setText("SUBMIT");
        btnSubmit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSubmitActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnlProblemLayout = new javax.swing.GroupLayout(pnlProblem);
        pnlProblem.setLayout(pnlProblemLayout);
        pnlProblemLayout.setHorizontalGroup(
            pnlProblemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlProblemLayout.createSequentialGroup()
                .addComponent(txtproblemName, javax.swing.GroupLayout.PREFERRED_SIZE, 76, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(cbProblem, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addComponent(jScrollProblem)
            .addGroup(pnlProblemLayout.createSequentialGroup()
                .addComponent(lblFiletoUpload)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtFilepath, javax.swing.GroupLayout.PREFERRED_SIZE, 930, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlProblemLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(txtLanguage)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(cbLanguage, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(btnSubmit, javax.swing.GroupLayout.PREFERRED_SIZE, 124, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        pnlProblemLayout.setVerticalGroup(
            pnlProblemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlProblemLayout.createSequentialGroup()
                .addGroup(pnlProblemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtproblemName)
                    .addComponent(cbProblem, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollProblem, javax.swing.GroupLayout.DEFAULT_SIZE, 744, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlProblemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblFiletoUpload)
                    .addComponent(txtFilepath, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnButton))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlProblemLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtLanguage)
                    .addComponent(cbLanguage, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnSubmit, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        threetab.addTab("PROBLEM", pnlProblem);
        jScrollviewtest.setViewportView(tblViewtest);

        javax.swing.GroupLayout pnlviewtestrunLayout = new javax.swing.GroupLayout(pnlviewtestrun);
        pnlviewtestrun.setLayout(pnlviewtestrunLayout);
        pnlviewtestrunLayout.setHorizontalGroup(
            pnlviewtestrunLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollviewtest, javax.swing.GroupLayout.DEFAULT_SIZE, 1141, Short.MAX_VALUE)
        );
        pnlviewtestrunLayout.setVerticalGroup(
            pnlviewtestrunLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollviewtest, javax.swing.GroupLayout.DEFAULT_SIZE, 874, Short.MAX_VALUE)
        );

        threetab.addTab("VIEW TEST RUNS", pnlviewtestrun);
        jScrollScoreboard.setViewportView(tblScoreboard);

        javax.swing.GroupLayout pnlscoreboardLayout = new javax.swing.GroupLayout(pnlscoreboard);
        pnlscoreboard.setLayout(pnlscoreboardLayout);
        pnlscoreboardLayout.setHorizontalGroup(
            pnlscoreboardLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollScoreboard, javax.swing.GroupLayout.DEFAULT_SIZE, 1141, Short.MAX_VALUE)
        );
        pnlscoreboardLayout.setVerticalGroup(
            pnlscoreboardLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlscoreboardLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollScoreboard, javax.swing.GroupLayout.DEFAULT_SIZE, 862, Short.MAX_VALUE))
        );

        threetab.addTab("SCOREBOARD", pnlscoreboard);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(txtHello, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtName, javax.swing.GroupLayout.PREFERRED_SIZE, 191, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnLogout))
            .addComponent(threetab)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(txtHello)
                        .addComponent(txtName))
                    .addComponent(btnLogout))
                .addGap(18, 18, 18)
                .addComponent(threetab))
        );
        pack();        
    }
    
    public void initProblemList() {
        ProblemDAO prob = new ProblemDAO();
        probs = prob.getAllProblem();
        String[] listName= new String[probs.size()];
        for (int i = 0; i < probs.size(); i++) {
            listName[i] = probs.get(i).getName();
        }
        cbProblem.setModel(new DefaultComboBoxModel(listName));
    }
    
    public void initSubmissionList() {
        this.tblViewtest.removeAll();
        SubmissionDAO obj = new SubmissionDAO();
        String[] columnNames = {"ID", "Problem", "Time Submission", "Language", "Error", "Result"};
        this.subList = obj.getUserSubmission(this._user);
        Collections.sort(this.subList, new Comparator<Submission>(){
            public int compare(Submission a, Submission b) 
            { 
                return b.getSubmitTime().compareTo(a.getSubmitTime()); 
            }
        });
        String[][] value = new String[this.subList.size()][6];
        for(int i=0; i<this.subList.size(); i++){
                value[i][0] = String.valueOf(i+1);//tf.format(this.subList.get(i).getCheckin());
                value[i][1] = this.probs.get(this.subList.get(i).getProblemid()).getName();//this.probs.get(this.subList.get(i).getProblemid()).getName();//tf.format(this.subList.get(i).getCheckout());
                value[i][2] = this.subList.get(i).getSubmitTime();
                value[i][3] = (this.subList.get(i).getLanguageid() == 1) ? "C++" : "Java";
                value[i][4] = this.subList.get(i).getJudge_core_errors();
                value[i][5] = this.subList.get(i).getVerdict();                
            }
        
        DefaultTableModel tableModel = new DefaultTableModel(value, columnNames) {
            @Override
            public boolean isCellEditable(int row, int column) {
               //unable to edit cells
               return false;
            }
        };
        this.tblViewtest.setModel(tableModel);
        this.tblViewtest.setDefaultRenderer(Object.class, new DefaultTableCellRenderer() {
            public Component getTableCellRendererComponent(JTable table,
                                          Object value,
                                          boolean isSelected,
                                          boolean hasFocus,
                                          int row,
                                          int column) {
                Component comp = super.getTableCellRendererComponent(table,
                        value, isSelected, hasFocus, row, column);
                Color color= new Color(255, 153, 154);
                String tmp = subList.get(row).getVerdict();
//                String tmp = subList.get(row).getJudgeStatus();
                try {
                    if (tmp.equals("AC")) {
                        color= new Color(8, 255, 132);
                    }
                    else if (tmp.equals("QUEUE")) {
                        color= new Color(255, 255, 132);
                    }                   
                } catch (Exception e) {
                      System.out.println("ee");
                }

                comp.setBackground(color);
                return comp;
            }
        });
    }
    
    public void initScoreboard() {
        this.tblScoreboard.removeAll();
        UserDAO obj = new UserDAO();
        String[] columnNames = {"ID", "Full Name", "Number Problem Solved"};
        this.userList = obj.getUserRanking();
        Collections.sort(this.userList, new Comparator<User>(){
            public int compare(User a, User b) 
            { 
                return b.getNumSolver() - a.getNumSolver(); 
            }
        });
        String[][] value = new String[this.userList.size()][3];
        for(int i=0; i<this.userList.size(); i++){
                value[i][0] = String.valueOf(i+1);//tf.format(this.subList.get(i).getCheckin());
                value[i][1] = this.userList.get(i).getFullName();
                value[i][2] = String.valueOf(this.userList.get(i).getNumSolver());            
            }
    
        DefaultTableModel tableModel = new DefaultTableModel(value, columnNames) {
            @Override
            public boolean isCellEditable(int row, int column) {
               //unable to edit cells
               return false;
            }
        };
        this.tblScoreboard.setModel(tableModel);        
    }
    
    @Override
    public void actionPerformed(ActionEvent ae) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    private void btnButtonActionPerformed(java.awt.event.ActionEvent evt) {                                          
        // TODO add your handling code here:
        JFileChooser jfc = new JFileChooser();
        int result = jfc.showOpenDialog(null);
        if (result != JFileChooser.APPROVE_OPTION) {
            return;
        }
        File selected = jfc.getSelectedFile();
        txtFilepath.setText(selected.getPath());        
    }
    
    private void btnLogoutActionPerformed(java.awt.event.ActionEvent evt) {                                          
        // TODO add your handling code here:
        new LoginFrm().setVisible(true);
        this.dispose();
    }                                         

    private void cbProblemActionPerformed(java.awt.event.ActionEvent evt) {                                          
        // TODO add your handling code here:
        int idx = cbProblem.getSelectedIndex();
        this.problem_idx = this.probs.get(idx).getId();
        txtProblem.setText(this.probs.get(idx).getStatement());
    }                                         

    private void cbLanguageActionPerformed(java.awt.event.ActionEvent evt) {                                          
        // TODO add your handling code here:
        language_idx = cbLanguage.getSelectedIndex() + 1;
    }    
    
    private void btnSubmitActionPerformed(java.awt.event.ActionEvent evt) {                                          
        // TODO add your handling code here:
//        1, language_idx, problem_idx, "", this.txtFilepath.getText(), "", "", _user.getId(), "", "", ""
        Submission sub = new Submission();        
        sub.setCodePath(this.txtFilepath.getText());
        sub.setProblemid(problem_idx);
        sub.setUserid(_user.getId());
        sub.setLanguageid(language_idx);
        if (client.send(sub)) {
            JOptionPane.showMessageDialog(this, "Submit successfully!");
        }
        else
            JOptionPane.showMessageDialog(this, "Submit failed!");
    }
}
