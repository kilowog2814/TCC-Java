package Formularios;

import Banco.ClasseConexao;
import Classes.Validar;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import javax.swing.JOptionPane;

public class InternalConsulta_Edicao extends javax.swing.JInternalFrame {

    public InternalConsulta_Edicao() {
        initComponents();
        jbtnGerarSenha.setVisible(false);
        jbtnGerarUsuario.setVisible(false);
        jbtnAtualizar.setVisible(false);
    }
    private Validar valida;
    private Banco.ClasseConexao con;
    private ResultSet result;

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        txtEmail = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        txtNome = new javax.swing.JTextField();
        txtNovoCpf = new javax.swing.JFormattedTextField();
        txtTelefone = new javax.swing.JFormattedTextField();
        txtRG = new javax.swing.JFormattedTextField();
        jLabel13 = new javax.swing.JLabel();
        jtxtIDFuncionario = new javax.swing.JTextField();
        jLabel20 = new javax.swing.JLabel();
        jtxtData = new javax.swing.JFormattedTextField();
        jtxtStatus = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        txtNascimento = new javax.swing.JFormattedTextField();
        jLabel7 = new javax.swing.JLabel();
        txtEndereco = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        txtNumero = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        txtCep = new javax.swing.JFormattedTextField();
        jLabel10 = new javax.swing.JLabel();
        txtEstado = new javax.swing.JTextField();
        jLabel17 = new javax.swing.JLabel();
        txtCidade = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        jbtnGerarUsuario = new javax.swing.JButton();
        jbtnGerarSenha = new javax.swing.JButton();
        cmbAcesso = new javax.swing.JComboBox<String>();
        jLabel19 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        txtSenha = new javax.swing.JTextField();
        txtUsuario = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        txtCpfFuncionario = new javax.swing.JFormattedTextField();
        jbtnPesquisa = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jbtnEditar = new javax.swing.JButton();
        jbtnAtualizar = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        getContentPane().setLayout(null);

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Dado do Funcionario", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 14))); // NOI18N

        txtEmail.setEditable(false);

        jLabel1.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel1.setText("Nome Completo:");

        jLabel2.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel2.setText("CPF:");

        jLabel3.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel3.setText("RG:");

        jLabel4.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel4.setText("Email:");

        jLabel5.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel5.setText("Telefone:");

        jLabel6.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel6.setText("Data Nasc:");

        txtNome.setEditable(false);

        txtNovoCpf.setEditable(false);
        try {
            txtNovoCpf.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("###.###.###-##")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }
        txtNovoCpf.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtNovoCpfFocusLost(evt);
            }
        });

        txtTelefone.setEditable(false);
        try {
            txtTelefone.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("(##)####-####")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }

        txtRG.setEditable(false);
        try {
            txtRG.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("##.###.###-#")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }
        txtRG.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                txtRGFocusLost(evt);
            }
        });

        jLabel13.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel13.setText("ID:");

        jtxtIDFuncionario.setEditable(false);
        jtxtIDFuncionario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtxtIDFuncionarioActionPerformed(evt);
            }
        });

        jLabel20.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel20.setText("Data de Admissão:");

        jtxtData.setEditable(false);
        try {
            jtxtData.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("##/##/####")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }

        jtxtStatus.setEditable(false);
        jtxtStatus.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N

        jLabel15.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel15.setText("Status:");

        txtNascimento.setEditable(false);
        try {
            txtNascimento.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("##/##/####    ")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }
        txtNascimento.setToolTipText("");

        jLabel7.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel7.setText("Endereço:");

        txtEndereco.setEditable(false);
        txtEndereco.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N

        jLabel9.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel9.setText("Numero:");

        txtNumero.setEditable(false);
        txtNumero.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N

        jLabel8.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel8.setText("CEP:");

        txtCep.setEditable(false);
        try {
            txtCep.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("#####-###")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }

        jLabel10.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel10.setText("Estado:");

        txtEstado.setEditable(false);
        txtEstado.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N

        jLabel17.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel17.setText("Cidade:");

        txtCidade.setEditable(false);
        txtCidade.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N

        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtEmail, javax.swing.GroupLayout.PREFERRED_SIZE, 275, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLabel5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtTelefone))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel13)
                        .addGap(18, 18, 18)
                        .addComponent(jtxtIDFuncionario, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtNome))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel20)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jtxtData, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel15)
                        .addGap(18, 18, 18)
                        .addComponent(jtxtStatus))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel7)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtEndereco)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel9)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtNumero, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel8)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtCep, javax.swing.GroupLayout.PREFERRED_SIZE, 202, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel10)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtEstado, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel17)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtCidade))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel6)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtNascimento, javax.swing.GroupLayout.PREFERRED_SIZE, 163, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtNovoCpf, javax.swing.GroupLayout.PREFERRED_SIZE, 233, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel3)
                                .addGap(18, 18, 18)
                                .addComponent(txtRG, javax.swing.GroupLayout.DEFAULT_SIZE, 170, Short.MAX_VALUE)))))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 15, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jtxtIDFuncionario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 15, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(jLabel2)
                    .addComponent(txtNovoCpf, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3)
                    .addComponent(txtRG, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtNascimento, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(6, 6, 6)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtEmail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5)
                    .addComponent(txtTelefone, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel20)
                    .addComponent(jtxtData, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel15)
                    .addComponent(jtxtStatus, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(txtEndereco, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9)
                    .addComponent(txtNumero, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(txtCep, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel10)
                    .addComponent(txtEstado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel17)
                    .addComponent(txtCidade, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 17, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(39, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel2);
        jPanel2.setBounds(0, 40, 753, 260);

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 1, true), "Sistema", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 14))); // NOI18N

        jbtnGerarUsuario.setText("Gerar Usuario");
        jbtnGerarUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnGerarUsuarioActionPerformed(evt);
            }
        });

        jbtnGerarSenha.setText("Gerar Senha");
        jbtnGerarSenha.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnGerarSenhaActionPerformed(evt);
            }
        });

        cmbAcesso.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        cmbAcesso.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Gerente", "Funcionario" }));
        cmbAcesso.setSelectedIndex(1);
        cmbAcesso.setEnabled(false);

        jLabel19.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jLabel19.setText("Nivel de Acesso:");

        jLabel14.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jLabel14.setText("Senha:");

        txtSenha.setEditable(false);
        txtSenha.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N

        txtUsuario.setEditable(false);
        txtUsuario.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N

        jLabel11.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jLabel11.setText("Usuário:");

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addGap(106, 106, 106)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel19)
                            .addComponent(jLabel14))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(cmbAcesso, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(txtSenha, javax.swing.GroupLayout.PREFERRED_SIZE, 268, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addComponent(jbtnGerarSenha, javax.swing.GroupLayout.PREFERRED_SIZE, 133, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(96, 96, 96))
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addGap(55, 55, 55)
                        .addComponent(jLabel11)
                        .addGap(14, 14, 14)
                        .addComponent(txtUsuario, javax.swing.GroupLayout.PREFERRED_SIZE, 268, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jbtnGerarUsuario, javax.swing.GroupLayout.PREFERRED_SIZE, 135, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addGap(29, 29, 29)
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jbtnGerarSenha)
                            .addComponent(txtSenha, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel14)))
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel11)
                            .addComponent(txtUsuario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jbtnGerarUsuario))
                        .addGap(34, 34, 34)
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel19)
                            .addComponent(cmbAcesso, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addGap(0, 26, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel4);
        jPanel4.setBounds(0, 300, 753, 131);

        jLabel12.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jLabel12.setText("CPF do Funcionario:");
        getContentPane().add(jLabel12);
        jLabel12.setBounds(143, 20, 111, 15);

        try {
            txtCpfFuncionario.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.MaskFormatter("###.###.###-##")));
        } catch (java.text.ParseException ex) {
            ex.printStackTrace();
        }
        getContentPane().add(txtCpfFuncionario);
        txtCpfFuncionario.setBounds(258, 14, 215, 29);

        jbtnPesquisa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Design/btnPesquisa.png"))); // NOI18N
        jbtnPesquisa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnPesquisaActionPerformed(evt);
            }
        });
        getContentPane().add(jbtnPesquisa);
        jbtnPesquisa.setBounds(479, 14, 31, 26);

        jButton2.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Design/btnCancelarAdm.png"))); // NOI18N
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2);
        jButton2.setBounds(640, 440, 110, 81);

        jbtnEditar.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jbtnEditar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Design/btnEditar8.png"))); // NOI18N
        jbtnEditar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnEditarActionPerformed(evt);
            }
        });
        getContentPane().add(jbtnEditar);
        jbtnEditar.setBounds(520, 440, 110, 81);

        jbtnAtualizar.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jbtnAtualizar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Design/bnConfirmarAdm.png"))); // NOI18N
        jbtnAtualizar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtnAtualizarActionPerformed(evt);
            }
        });
        getContentPane().add(jbtnAtualizar);
        jbtnAtualizar.setBounds(520, 440, 110, 81);

        setBounds(0, 0, 779, 562);
    }// </editor-fold>//GEN-END:initComponents

    private void jbtnGerarUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnGerarUsuarioActionPerformed
        if (txtNome.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "Não existe o usuario!");
        } else {
            String nome = txtNome.getText();
            nome = nome.toLowerCase();
            int tamanho = nome.indexOf(" ");
            String[] usuario = nome.split(" ", tamanho);
            String usuarioFinal = usuario[0] + "." + usuario[1];
            txtUsuario.setText(usuarioFinal);
        }
    }//GEN-LAST:event_jbtnGerarUsuarioActionPerformed

    private void jbtnGerarSenhaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnGerarSenhaActionPerformed
        // pesquisar
        UUID uuid = UUID.randomUUID();
        String myRandom = uuid.toString();
        txtSenha.setText(myRandom.substring(0, 6));
    }//GEN-LAST:event_jbtnGerarSenhaActionPerformed

    private void jbtnEditarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnEditarActionPerformed
        if (!txtCpfFuncionario.getText().isEmpty() || (!txtEmail.getText().isEmpty())) {
            txtNome.setEditable(true);
            txtRG.setEditable(true);
            txtNovoCpf.setEditable(true);
            txtTelefone.setEditable(true);
            txtNascimento.setEditable(true);
            txtEmail.setEditable(true);
            txtEndereco.setEditable(true);
            txtCep.setEditable(true);
            txtEstado.setEditable(true);
            txtCidade.setEditable(true);
            cmbAcesso.setEditable(true);
            txtNumero.setEditable(true);
            jtxtStatus.setEditable(true);
            jbtnGerarSenha.setVisible(true);
            jbtnGerarUsuario.setVisible(true);
            jbtnEditar.setVisible(false);
            jbtnAtualizar.setVisible(true);
            
        } else {
            JOptionPane.showMessageDialog(null, "Digite um CPF!");
        }
    }//GEN-LAST:event_jbtnEditarActionPerformed

    private void jbtnAtualizarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnAtualizarActionPerformed
        con = new ClasseConexao();
        if (!txtCpfFuncionario.getText().isEmpty()) {
            String nome = txtNome.getText();
            String rg = txtRG.getText().replace(".", "").replace("-", "").trim();
            String cpf = txtNovoCpf.getText().replace(".", "").replace("-", "").trim();
            String telefone = txtTelefone.getText().replace(")", "").replace("(", "").replace("-", "").trim();
            String data = txtNascimento.getText();
            String email = txtEmail.getText();
            String endereco = txtEndereco.getText() + ", " + txtNumero.getText();
            String cep = txtCep.getText().replace("-", "");
            String estado = txtEstado.getText();
            String cidade = txtCidade.getText();
            String login = txtUsuario.getText();
            String senha = txtSenha.getText();

            String dadosFuncionario = "'" + nome + "','" + cpf + "'," + rg + ",'" + email + "','" + telefone + "','" + data + "','" + endereco + "','" + cep + "','" + cidade + "','" + estado + "','" + login + "','" + senha + "'";
            try {
                if (con.chamarProcedureB("usp_atualizarFuncionario (" + dadosFuncionario + ")")) {
                    JOptionPane.showMessageDialog(null, "Dados do funcionario atualizados com sucesso!");
                } else {
                    JOptionPane.showMessageDialog(null, "Não foi possivel atualizar os dados!");
                }
            } catch (Exception ex) {
            }
        } else {
            JOptionPane.showMessageDialog(null, "Digite uma CPF!");
        }

    }//GEN-LAST:event_jbtnAtualizarActionPerformed

    private void txtNovoCpfFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtNovoCpfFocusLost
        valida = new Validar();
        txtRG.addFocusListener(new FocusListener() {
            @Override
            public void focusGained(FocusEvent e) {
                txtRG.setText("");
            }

            @Override
            public void focusLost(FocusEvent e) {
                String rg = txtRG.getText();
                if (valida.isRg(rg) == false) {
                    JOptionPane.showMessageDialog(null, "Este RG não pode ser usado!!");
                    txtNovoCpf.setText("");
                    //requestFocus();
                }
            }
        });
    }//GEN-LAST:event_txtNovoCpfFocusLost

    private void txtRGFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtRGFocusLost
        valida = new Validar();
        txtNovoCpf.addFocusListener(new FocusListener() {
            @Override
            public void focusGained(FocusEvent e) {
                txtNovoCpf.setText("");
            }

            @Override
            public void focusLost(FocusEvent e) {
                String cpf = txtNovoCpf.getText();
                if (valida.isCpf(cpf) == false) {
                    JOptionPane.showMessageDialog(null, "Cpf não pode ser usado!!");
                    txtNovoCpf.setText("");
                    //requestFocus();
                }
            }
        });
    }//GEN-LAST:event_txtRGFocusLost

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        dispose();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jbtnPesquisaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtnPesquisaActionPerformed
        con = new ClasseConexao();
        if (txtCpfFuncionario.getText().isEmpty()) {
            JOptionPane.showMessageDialog(null, "Digite um CPF!");
        } else {
            String sql = "usp_pesquisarFuncionario (" + txtCpfFuncionario.getText().replace("-", "").replace(".", "").trim() + ")";

            try {
                result = con.chamarProcedure(sql);
                if (result.next()) {

                    txtNome.setText(result.getString("nomeFuncionario"));
                    txtRG.setText(result.getString("rgFuncionario"));
                    txtNovoCpf.setText(result.getString("cpfFuncionario"));
                    txtTelefone.setText(result.getString("telefoneFuncionario"));
                    Date data =  result.getDate("dataNascimentoFuncionario");
                    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                    txtNascimento.setText(sdf.format(data));
                    txtEmail.setText(result.getString("emailFuncionario"));
                    String dat = result.getString("enderecoFuncionario");
                    String temp[] = dat.split(",");
                    txtEndereco.setText(temp[0]);
                    txtNumero.setText(temp[1].replace(" ", ""));
                    txtCep.setText(result.getString("cepFuncionario"));
                    txtEstado.setText(result.getString("estadoFuncionario"));
                    txtCidade.setText(result.getString("cidadeFuncionario"));
                    txtUsuario.setText(result.getString("loginFuncionario"));
                    txtNascimento.setText(result.getString("dataNascimentoFuncionario"));
                    int nivel = result.getInt("codNivel");
                    cmbAcesso.setSelectedIndex(nivel);
                    txtSenha.setText(result.getString("senhaFuncionario"));
                    jtxtStatus.setText(result.getString("statusFuncionario"));
                    Date dataAd = result.getDate("dataAdmissaoFuncionario");                    
                    jtxtData.setText(sdf.format(dataAd));
                    txtCpfFuncionario.enable(false);
                    jbtnPesquisa.setVisible(false);
                    jtxtIDFuncionario.setText(result.getString("idFuncionario"));

                } else {
                    JOptionPane.showMessageDialog(null, "Esse CPF não está cadastrado!");
                }
            } catch (Exception erro) {
                JOptionPane.showMessageDialog(null, "Erro: " + erro);
            }

        }
    }//GEN-LAST:event_jbtnPesquisaActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        txtCpfFuncionario.setText("21104796201");
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jtxtIDFuncionarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtxtIDFuncionarioActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jtxtIDFuncionarioActionPerformed

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> cmbAcesso;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JButton jbtnAtualizar;
    private javax.swing.JButton jbtnEditar;
    private javax.swing.JButton jbtnGerarSenha;
    private javax.swing.JButton jbtnGerarUsuario;
    private javax.swing.JButton jbtnPesquisa;
    private javax.swing.JFormattedTextField jtxtData;
    private javax.swing.JTextField jtxtIDFuncionario;
    private javax.swing.JTextField jtxtStatus;
    private javax.swing.JFormattedTextField txtCep;
    private javax.swing.JTextField txtCidade;
    private javax.swing.JFormattedTextField txtCpfFuncionario;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextField txtEndereco;
    private javax.swing.JTextField txtEstado;
    private javax.swing.JFormattedTextField txtNascimento;
    private javax.swing.JTextField txtNome;
    private javax.swing.JFormattedTextField txtNovoCpf;
    private javax.swing.JTextField txtNumero;
    private javax.swing.JFormattedTextField txtRG;
    private javax.swing.JTextField txtSenha;
    private javax.swing.JFormattedTextField txtTelefone;
    private javax.swing.JTextField txtUsuario;
    // End of variables declaration//GEN-END:variables
}
