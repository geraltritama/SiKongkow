/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fitur;

/**
 *
 * @author Asus
 */
// PEWARISAN
public class PembeliUmum extends Pembeli {

    public PembeliUmum(String nama, String noHp) {
        super(nama, noHp);
    }

    // POLIMORFISME (Overriding): Logika diskon orang biasa
    @Override
    public double hitungDiskon(double totalBelanja) {
        return 0; // Tidak ada diskon
    }
}
