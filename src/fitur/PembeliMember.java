/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fitur;

/**
 *
 * @author Asus
 */
//pewarisan
public class PembeliMember extends Pembeli {
    private int jumlahVisit;

    public PembeliMember(String nama, String noHp, int jumlahVisit) {
        super(nama, noHp); // Memanggil constructor induk
        this.jumlahVisit = jumlahVisit;
    }

    // POLIMORFISME (Overriding): Logika diskon khusus Member
    @Override
    public double hitungDiskon(double totalBelanja) {
        if (jumlahVisit > 10) {
            return totalBelanja * 0.15; // Diskon 15%
        } else if (jumlahVisit > 5) {
            return totalBelanja * 0.10; // Diskon 10%
        }
        return 0;
    }
}
