/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fitur;

/**
 *
 * @author Asus
 */
public abstract class Pembeli {
    // ENKAPSULASI: Variabel private
    private String nama;
    private String noHp;

    public Pembeli(String nama, String noHp) {
        this.nama = nama;
        this.noHp = noHp;
    }

    //(Enkapsulasi)
    public String getNama() { return nama; }
    public String getNoHp() { return noHp; }

    // Penerapan (Polimorfisme) ibaratnya kaya Anak cucunya WAJIB punya method ini tapi isinya beda-beda 
    public abstract double hitungDiskon(double totalBelanja);
}
