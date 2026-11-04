programa {
    funcao inicio() {
        cadeia nome_vendedor
        inteiro salario
        inteiro quantidade_vendas_mensal
        inteiro comissao
        inteiro valor_comissao_final

        escreva("Digite o nome do vendedor: ")
        leia(nome_vendedor)

        escreva("Digite o salário do vendedor: ")
        leia(salario)

        escreva("Digite a quantidade de vendas: ")
        leia(quantidade_vendas_mensal) 

        escreva("Digite a comissão (valor por venda): ")
        leia(comissao)

        valor_comissao_final = calculo_percentual(quantidade_vendas_mensal, comissao)

        escreva("\n--- R E S U M O ---\n")
        escreva("\n")
        escreva("Nome: ", nome_vendedor, "\n")
        escreva("Salário Líquido: ", salario, "\n")
        escreva("Valor comissão: ", valor_comissao_final, "\n")
        escreva("Salário Final: ", salario + valor_comissao_final, "\n")
    }

    funcao inteiro calculo_percentual(inteiro qtd, inteiro valor_comissao) {
        retorne qtd * valor_comissao
    }
}
