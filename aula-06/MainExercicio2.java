public class MainExercicio2 {
    public static void main(String[] args) {

        // Referência conta Ana apontando para a nova instância alocada na heap
        ContaBancaria contaAna = new ContaBancaria("Ana Silva", "0412", "18492-3");

        // Sequência obrigatória do Exercício 2
        contaAna.depositar(500);
        contaAna.sacar(200);
        contaAna.sacar(1000);
        contaAna.sacar(-50);

        // Exibição do titular e do saldo final via consultarSaldo()
        System.out.println(contaAna.titular + " | Saldo: " + contaAna.consultarSaldo());

        // DESAFIO: transferência entre instâncias
        System.out.println("\n=== DESAFIO: TRANSFERÊNCIA ===");
        ContaBancaria contaDestino = new ContaBancaria("Carlos Mendes", "1089", "55310-8");

        if (contaAna.transferir(contaDestino, 100)) {
            System.out.println("Transferência de R$ 100.0 realizada com sucesso.");
        }

        System.out.println(contaAna.titular + " | Saldo: " + contaAna.consultarSaldo());
        System.out.println(contaDestino.titular + " | Saldo: " + contaDestino.consultarSaldo());
    }
}
