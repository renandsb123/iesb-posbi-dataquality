# Laboratório de Qualidade de Dados
## Curso Governança e Qualidade de Dados - IESB
### Prof. Arnaldo Vitaliano

# Instruções

## 1. Fork do repositório
1. Logar na sua conta [github](www.github.com);
2. Acessar o repositório [avitaliano/iesb-posbi-dataquality](https://github.com/avitaliano/iesb-posbi-dataquality);
3. Realizar o **fork** do repositório;
* A operação de **fork** cria uma cópia do repositório na sua conta;
4. Acessar o repositório na sua própria conta;

## 2. Clonar o seu repositório localmente
1. Acessar seu repositório no caminho **seuusuario/iesb-posbi-dataquality**;
2. Clicar no botão **Clone ou Download**, e copiar o link para clonar **utilizando HTTPS**;
3. Abrir o GIT BASH na sua máquina;
4. Clonar o repositório para sua máquina com o seguinte comando:
```bash
git clone https://github.com/seuusuario/iesb-posbi-dataquality.git
```
* Este comando irá criar uma cópia local do repositório.

# GIT

## Comandos básicos

## 1. Adicionar um arquivo alterado/criado localmente para a área de Stage
* Criem um arquivo txt simples com o seguinte comando:
```bash
echo "meu arquivo com linha A" > arquivo.txt
```
## 2. Verificar o estado do repositório
* Executem o comando que verifica o **status** do seu repositório local:
```bash
git status
```
* Este comando mostra que existe um arquivo chamado **arquivo.txt** que não está sendo **tracked** pelo git.

## 3. Adicionar o arquivo ao repositório local
* Vamos adicionar o arquivo ao repositório local com o comando abaixo:
```bash
git add arquivo.txt
```

## 4. Verificar novamente o estado do repositório
* Agora execute o comando **git status** novamente, para ver o que acontece:
* O arquivo **arquivo.txt** agora está no estado **modified**, ou seja, está na área temporária do repositório.

## 5. Incluir as alterações no repositório
* Agora, vamos incluir as alterações no **HEAD** do repositório, ou seja, criar um **commit** para incluir a alteração:
```bash
git commit -m "mensagem do commit"
```
## 6. Conferindo as alterações
* Para conferir se tudo foi feito de maneira correta, podemos usar o comando **git log**:
```bash
git log
```

## 7. Levar as alterações para o repositório remoto
* Por último, vamos jogar os últimos commits realizados para a versão remota do nosso repositório
```bash
git push origin master
```
* Este comando joga os commits realizados para o branch **master** no caminho **origin**
* Para saber onde **origin** aponta, digite o comando **git remote -v**




