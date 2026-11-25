public class ContaBancaria {
    String titular;
    String agencia;
    String conta;
    double saldo;

    public ContaBancaria(String titular, String agencia, String conta) {
        this.titular = titular;
        this.agencia = agencia;
        this.conta = conta;
        this.saldo = 0.0; 
    }
}
