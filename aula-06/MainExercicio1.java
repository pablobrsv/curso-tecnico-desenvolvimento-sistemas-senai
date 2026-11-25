public class MainExercicio1 {
    public static void main(String[] args) {
        ContaBancaria conta1 = new ContaBancaria("Mariana Vasconcelos", "0412", "18492-3");
        ContaBancaria conta2 = new ContaBancaria("Roberto Albuquerque", "1089", "55310-8");
        ContaBancaria conta3 = new ContaBancaria("Fernanda Guimarães", "3320", "90417-1");

        System.out.println("=== CONTAS CADASTRADAS ===");
        exibirDados(conta1);
        exibirDados(conta2);
        exibirDados(conta3);

        // EXTENSÃO
        ContaBancaria conta4 = new ContaBancaria("Thiago Castelo Branco", "0754", "62104-9");

        System.out.println("=== EXTENSÃO ===");
        exibirDados(conta4);

        double somaSaldos = conta1.saldo + conta2.saldo + conta3.saldo + conta4.saldo;
        System.out.printf("Soma dos saldos das 4 contas: R$ %.2f%n", somaSaldos);
    }

    private static void exibirDados(ContaBancaria c) {
        System.out.println("Titular: " + c.titular);
        System.out.println("Agência: " + c.agencia);
        System.out.println("Conta:   " + c.conta);
        System.out.printf("Saldo:   R$ %.2f%n", c.saldo);
        System.out.println("---------------------------");
    }
}
