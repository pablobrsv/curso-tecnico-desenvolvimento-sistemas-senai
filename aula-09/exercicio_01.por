programa 
{
    funcao inicio()
    {
        entrada_dados()
        escreva("Fim de programa:")
    }
    
    funcao entrada_dados()
    {
        cadeia empresa
        inteiro ano
        escreva("Digite o ano do curso: ")
        leia(ano)
        escreva("Digite o nome da empresa: ")
        leia(empresa)
        mensagem(empresa, ano)
        escreva("Fim entrada_dados\n")
    }
    
    funcao mensagem(cadeia empresa, inteiro ano)
    {
        escreva("********************\n")
        escreva("***", empresa, "-", ano, "***\n")
        escreva("********************")
    }
}
