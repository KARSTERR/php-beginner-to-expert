# PHP Başlangıçtan Uzmanlığa

Bu depo, PHP'ı başlangıç seviyesinden uzman seviyesine kadar öğretmek için tasarlanmıştır. PHP'ı öğrenip pratik yapmanıza yardımcı olacak çeşitli örnekler ve alıştırmalar içerir.

## İçindekiler

- [Giriş](#giriş)
- [Başlangıç](#başlangıç)
- [Dizin Yapısı](#dizin-yapısı)
- [Gereksinimler](#gereksinimler)
- [Kurulum](#kurulum)
- [Docker Kurulumu](#docker-kurulumu)
  - [Docker İmajı Oluşturma](#docker-İmajı-oluşturma)
  - [Docker Container'ı Çalıştırma](#docker-container-çalıştırma)
  - [Durdurma ve Temizlik](#durdurma-ve-temizlik)
- [Kullanım](#kullanım)
- [Katkıda Bulunma](#katkıda-bulunma)
- [Lisans](#lisans)

## Giriş

Bu depo, PHP'ı öğrenmek için kapsamlı bir rehberdir. Her biri PHP programlamanın farklı yönlerine odaklanan birçok bölüme ayrılmıştır.

## Başlangıç

Bu depoyla başlamak için aşağıdaki adımları izleyin.

## Gereksinimler

- Bilgisayarınızda yüklenmiş PHP
- Apache veya Nginx gibi bir web sunucusu
- MySQL gibi bir veritabanı sunucusu
- Bilgisayarınızda yüklenmiş Docker ve Docker Compose

## Kurulum

1. Depoyu klonlayın:
    ```sh
    git clone https://github.com/KARSTERR/php-beginner-to-expert.git
    ```
2. Proje dizinine gidin:
    ```sh
    cd php-beginner-to-expert
    ```

## Docker Kurulumu

Bu proje, Docker kullanarak ortamı kolayca kurup çalıştırmanız için bir `Dockerfile` ve `docker-compose.yml` dosyası içerir.

### Docker İmajı Oluşturma

1. Docker'ın bilgisayarınızda çalıştığından emin olun.
2. Aşağıdaki komutla Docker imajını oluşturun:
    ```sh
    docker build -t php-beginner-to-expert .
    ```
    Bu komut, proje dizinindeki `Dockerfile` temel alınarak `php-beginner-to-expert` adında bir imaj oluşturur.

### Docker Container'ı Çalıştırma

1. Docker Compose ile container'ı başlatın:
    ```sh
    docker-compose up -d
    ```
    Bu komut:
    - Container'ı arka planda (çekilmiş modda) başlatır.
    - `docker-compose.yml` dosyasında tanımlı hizmetleri otomatik olarak kurar.

2. Tarayıcınızda aşağıdaki adresi ziyaret edin:
    ```
    http://localhost:8080
    ```
    (Gerekirse `docker-compose.yml` dosyasındaki portu değiştirin.)

### Durdurma ve Temizlik

Çalışan container'ı durdurmak için:
```sh
docker-compose down
```
Bu komut, container'ı durdurup kaldırır, ancak oluşturulmuş imajı silmez.

Oluşturulan imajı silerek temizlemek için:
```sh
docker rmi php-beginner-to-expert
```

## Kullanım

1. Web sunucunuzu başlatın ve proje dizinine gidin.
2. Tarayıcınızda `http://localhost/php-beginner-to-expert` adresini ziyaret edin (veya Docker kurulumunuzda tanımlı portu kullanın).

## Katkıda Bulunma

Katkılar memnuniyetle karşılanır! Lütfen öncelikle [katkı rehberini](CONTRIBUTING.md) okuyun.

## Lisans

Bu proje MIT Lisansı altında lisanslanmıştır - detaylar için [LICENSE](LICENSE) dosyasına bakın.

