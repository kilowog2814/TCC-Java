package Formularios;

import Classes.Compartinha;
import java.text.DateFormat;
import java.util.Date;

public class Principal extends javax.swing.JFrame {

    public Principal() {
        initComponents();

    }
    private InternalDemissao dem;
    private InternalAdmissao adm;

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jAreaPrincipal = new javax.swing.JDesktopPane();
        jbtnDemissao = new javax.swing.JButton();
        jbtnAdimissao = new javax.swing.JButton();
        jbtnRelatorio = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jlblNomeFuncionario = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        jMenuItem1 = new javax.swing.JMenuItem();
        jMenuItem2 = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jAreaPrincipal.setBackground(new java.awt.Color(255, 255, 255));

        jbtnDemissao.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Design/btnDemisão.png"))); // NOI18N
        jbtnDemissao.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnDemissaoActionPerformed(evt);
            }
        });

        jbtnAdimissao.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Design/btnAdmissão.png"))); // NOI18N
        jbtnAdimissao.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnAdimissaoActionPerformed(evt);
            }
        });

        jbtnRelatorio.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Design/btnConsulta.png"))); // NOI18N
        jbtnRelatorio.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnRelatorioActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Arial", 1, 24)); // NOI18N
        jLabel1.setText("Bom dia,");

        jlblNomeFuncionario.setFont(new java.awt.Font("Arial", 1, 24)); // NOI18N
        jlblNomeFuncionario.setText("?");

        javax.swing.GroupLayout jAreaPrincipalLayout = new javax.swing.GroupLayout(jAreaPrincipal);
        jAreaPrincipal.setLayout(jAreaPrincipalLayout);
        jAreaPrincipalLayout.setHorizontalGroup(
            jAreaPrincipalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jAreaPrincipalLayout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addGroup(jAreaPrincipalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jbtnDemissao, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                    .addComponent(jbtnAdimissao, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jbtnRelatorio, javax.swing.GroupLayout.PREFERRED_SIZE, 142, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 862, Short.MAX_VALUE)
                .addGroup(jAreaPrincipalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jlblNomeFuncionario, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.Alignment.TRAILING))
                .addContainerGap())
        );
        jAreaPrincipalLayout.setVerticalGroup(
            jAreaPrincipalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jAreaPrincipalLayout.createSequentialGroup()
                .addGap(52, 52, 52)
                .addComponent(jbtnAdimissao, javax.swing.GroupLayout.PREFERRED_SIZE, 141, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 48, Short.MAX_VALUE)
                .addGroup(jAreaPrincipalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jAreaPrincipalLayout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jlblNomeFuncionario))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jAreaPrincipalLayout.createSequentialGroup()
                        .addComponent(jbtnDemissao, javax.swing.GroupLayout.PREFERRED_SIZE, 141, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(46, 46, 46)
                        .addComponent(jbtnRelatorio, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(23, 23, 23))
        );

        jMenuBar1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        jMenu1.setText("Sistema");

        jMenuItem1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Design/Logoff.png"))); // NOI18N
        jMenuItem1.setText("Alterar Usuario");
        jMenuItem1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jMenuItem1MouseClicked(evt);
            }
        });
        jMenuItem1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem1ActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItem1);

        jMenuItem2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Design/Sair.png"))); // NOI18N
        jMenuItem2.setText("Sair");
        jMenuItem2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jMenuItem2MouseClicked(evt);
            }
        });
        jMenuItem2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem2ActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItem2);

        jMenuBar1.add(jMenu1);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jAreaPrincipal)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jAreaPrincipal)
        );

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-1134)/2, (screenSize.height-612)/2, 1134, 612);
    }// </editor-fold>//GEN-END:initComponents

    private void jMenuItem1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuItem1MouseClicked
    }//GEN-LAST:event_jMenuItem1MouseClicked

    private void jMenuItem2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jMenuItem2MouseClicked
    }//GEN-LAST:event_jMenuItem2MouseClicked

    private void jMenuItem1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem1ActionPerformed
        FrmLogin login = new FrmLogin();
        login.setVisible(true);
        dispose();
    }//GEN-LAST:event_jMenuItem1ActionPerformed

    private void jMenuItem2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem2ActionPerformed
        dispose();
    }//GEN-LAST:event_jMenuItem2ActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        this.setExtendedState(NORMAL);
        Compartinha nome = new Compartinha();
        jlblNomeFuncionario.setText(nome.getNomeFuncionario());
        
     
    }//GEN-LAST:event_formWindowOpened

    private void jbtnAdimissaoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnAdimissaoActionPerformed
        adm = new InternalAdmissao();
        jAreaPrincipal.add(adm);
        adm.setVisible(true);
    }//GEN-LAST:event_jbtnAdimissaoActionPerformed

    private void jbtnDemissaoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnDemissaoActionPerformed
        dem = new InternalDemissao();
        jAreaPrincipal.add(dem);
        dem.setVisible(true);
    }//GEN-LAST:event_jbtnDemissaoActionPerformed

    private void jbtnRelatorioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnRelatorioActionPerformed
        InternalConsulta_Edicao con = new InternalConsulta_Edicao();
        jAreaPrincipal.add(con);
        con.setVisible(true);
    }//GEN-LAST:event_jbtnRelatorioActionPerformed
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
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Principal().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JDesktopPane jAreaPrincipal;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JButton jbtnAdimissao;
    private javax.swing.JButton jbtnDemissao;
    private javax.swing.JButton jbtnRelatorio;
    private javax.swing.JLabel jlblNomeFuncionario;
    // End of variables declaration//GEN-END:variables
}
