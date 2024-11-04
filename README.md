# Projeto de IaC - Infraestrutura como Código

## 📋 Descrição
Este projeto implementa um script de Infraestrutura como Código (IaC) para Linux, automatizando a criação de estrutura de usuários, diretórios e permissões.

## 🚀 Funcionalidades

O script realiza as seguintes operações:

- Criação de diretórios
  - `/publico`
  - `/adm`
  - `/ven`
  - `/sec`

- Criação de grupos de usuários
  - GRP_ADM
  - GRP_VEN
  - GRP_SEC

- Criação de usuários e associação aos respectivos grupos
  - GRP_ADM: carlos, maria, joao
  - GRP_VEN: debora, sebastiana, roberto
  - GRP_SEC: josefina, amanda, rogerio

- Definição de permissões específicas
  - `/publico`: acesso total para todos (777)
  - `/adm`: acesso total para root e grupo GRP_ADM (770)
  - `/ven`: acesso total para root e grupo GRP_VEN (770)
  - `/sec`: acesso total para root e grupo GRP_SEC (770)

## 🛠️ Pré-requisitos
- Sistema operacional Linux
- Permissões de superusuário (root)

## 📦 Como usar

1. Faça o download do script:
   ```
   wget https://raw.githubusercontent.com/SondTheAnime/linux-projeto1-iac/main/iac1.sh
   ```

2. Dê permissão de execução ao script:
   ```
   chmod +x iac1.sh
   ```

3. Execute o script como superusuário:
   ```
   sudo ./iac1.sh
   ```

## ⚠️ Atenção
Este script fará alterações significativas no sistema, incluindo a criação e remoção de usuários e diretórios. Certifique-se de executá-lo em um ambiente controlado ou de teste.