# 🏦 MikroTik Banking Address List Indonesia

Address list lengkap untuk MikroTik RouterOS berisi IP dan domain **bank-bank Indonesia**, **e-wallet**, **payment gateway**, dan **card network internasional**.

Cocok untuk ISP yang ingin:
- ✅ **Bypass proxy** untuk traffic banking
- ✅ **QoS priority** agar transaksi banking lancar
- ✅ **Whitelist** agar IP pelanggan tidak terblokir oleh layanan banking
- ✅ **Monitoring** traffic banking di jaringan

## 📋 Daftar Layanan

### 🏦 Bank Indonesia (14 Bank + Mobile Banking)
| Bank | Tipe | Keterangan |
|------|------|------------|
| BCA | Own IP Block (`202.6.208.0/20`) | ✅ Stabil permanen |
| Bank Mandiri | AWS + Akamai CDN | DNS-based recommended |
| BNI | Own IP Block + Imperva CDN | ✅ Own IP `103.108.254.0/23` + Wondr/Direct |
| BRI | Own IP Block + Imperva CDN | ✅ Own IP `103.63.96.0/22` + BRImo/BRILink/BRIVA |
| BSI | Own IP Block + Imperva CDN | ✅ Own IP `103.23.116.0/23` + BSI Mobile endpoints |
| CIMB Niaga | Imperva CDN | DNS-based recommended |
| Bank Permata | Own IP Block (`202.191.2.0/23`) | ✅ Stabil permanen |
| Bank Danamon | Own IP Block (`222.229.80.0/21`) | ✅ Stabil permanen |
| BTN | Imperva CDN | DNS-based recommended |
| Bank Mega | Own IP Block (`103.222.239.0/24`) | ✅ Own IP + M-Smile Mobile |
| OCBC NISP | Multi-ISP + Imperva | IP + DNS + OCBC Mobile (ocbc.id) |
| Panin Bank | Akamai CDN | DNS-based only |
| Maybank | Own IP Block (`103.247.182.0/23`) | ✅ Stabil permanen |
| BCA Digital (blu) | Direct | IP + DNS |

### 💳 E-Wallet & Fintech
- GoPay / Gojek
- OVO
- DANA
- ShopeePay
- LinkAja

### 💰 Payment Gateway
- Midtrans
- Xendit
- DOKU
- Finpay

### 🌐 Card Network Internasional
- Visa
- Mastercard
- JCB

## 🚀 Cara Pakai

### Metode 1: Import File
```bash
# 1. Upload file mikrotik-banking.rsc ke MikroTik via Winbox/WinSCP
# 2. Buka Terminal MikroTik:
/import file-name=mikrotik-banking.rsc
```

### Metode 2: Copy-Paste
```bash
# Buka file mikrotik-banking.rsc
# Copy semua isinya
# Paste ke Terminal MikroTik
```

### Verifikasi
```bash
# Lihat semua entry
/ip firewall address-list print where list=BANKING

# Hitung total entry
/ip firewall address-list print count-only where list=BANKING
```

## ⚙️ Contoh Penggunaan

### QoS Priority Banking
```routeros
/ip firewall mangle add chain=prerouting dst-address-list=BANKING action=mark-connection new-connection-mark=banking_conn passthrough=yes
/ip firewall mangle add chain=prerouting connection-mark=banking_conn action=mark-packet new-packet-mark=banking_pkt passthrough=no
/queue simple add name=banking-priority packet-marks=banking_pkt max-limit=0/0 priority=1/1
```

### Always Allow Banking Traffic
```routeros
/ip firewall filter add chain=forward dst-address-list=BANKING action=accept comment="Allow banking traffic"
```

### Bypass Proxy untuk Banking
```routeros
/ip firewall nat add chain=dstnat dst-address-list=BANKING dst-port=443 protocol=tcp action=accept comment="Bypass proxy for banking"
```

## ⚠️ Catatan Penting

1. **DNS-based entries** lebih reliable — MikroTik resolve otomatis. Pastikan DNS dikonfigurasi:
   ```routeros
   /ip dns set servers=8.8.8.8,1.1.1.1 allow-remote-requests=yes
   ```

2. **7 bank punya IP block sendiri** (BCA, BNI, BRI, BSI, Permata, Danamon, Maybank, Bank Mega) — paling stabil, tidak berubah

3. **Bank di belakang CDN** (BNI, BRI, BSI, BTN, CIMB) — IP bisa berubah, andalkan DNS entry

4. **Update berkala** — cek ulang IP setiap 3 bulan untuk entry non-DNS

5. **CDN ranges (opsional)** — uncomment Section 5 di script jika banking masih terblokir

## 📄 Lisensi

MIT License — bebas digunakan dan dimodifikasi.

## 🤝 Kontribusi

Pull request welcome! Jika ada bank/layanan yang belum tercakup, silakan tambahkan.

---

> Generated with ❤️ by [enowX Labs](https://github.com/enowxlabs) NOC Agent
