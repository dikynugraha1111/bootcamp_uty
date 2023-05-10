# Catatan

Struktur pada folder ini dibuat untuk memudahkan kalian dalam melihat setiap source code pelatihan tiap minggunya.

Code utama yang dijalankan tetaplah di file `main.dart`. </br>
Kita hanya akan merubah value dari parameter `home` di `MaterialApp`.
Value atau tampilan dari parameter tersebut akan kita arahkan ke setiap folder atau file pelatihan mingguan yang telah dibuat sebelumnya.</br>

```dart
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UTY',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.system,
      // Definisikan Home sebagai tampilan awal yg dimunculkan pada aplikasi kalian
      home: const Layout(),
    );
  }
```
