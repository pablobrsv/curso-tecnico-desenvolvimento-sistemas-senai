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

    public void depositar(double valor) {
        if (valor <= 0) {
            System.out.println("Valor de depósito inválido.");
            return;
        }
        this.saldo += valor;
    }

    public boolean sacar(double valor) {
        if (valor <= 0) {
            System.out.println("Valor de saque inválido.");
            return false;
        }
        if (valor > this.saldo) {
            System.out.println("Saldo insuficiente.");
            return false;
        }
        this.saldo -= valor;
        return true;
    }

    public double consultarSaldo() {
        return this.saldo;
    }
    
    public boolean transferir(ContaBancaria destino, double valor) {
        if (destino == null) {
            System.out.println("Conta de destino inválida.");
            return false;
        }
        if (this.sacar(valor)) {
            destino.depositar(valor);
            return true;
        }
        return false;
    }
}
