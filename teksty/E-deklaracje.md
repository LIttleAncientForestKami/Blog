e-deklaracje i niewłaściwa klasa ELF: ELFCLASS64
=======================
April 27, 2013

Jeśli pomimo instalacji e-deklaracji na Twoim Ubuntu wedle [instrukcji](http://www.finanse.mf.gov.pl/documents/766655/1196444/instrukcjeLinux.pdf) z oficjalnej [strony](http://www.finanse.mf.gov.pl/systemy-informatyczne/e-deklaracje/instrukcje/-/asset_publisher/Kq7C/content/instrukcje-niezbedne-do-obslugi-formularzy-interaktywnych-i-aplikacji-e-deklaracje-desktop?redirect=http://www.finanse.mf.gov.pl/systemy-informatyczne/e-deklaracje/instrukcje?p_p_id=101_INSTANCE_Kq7C&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&p_p_col_id=column-2&p_p_col_count=1#p_p_id_101_INSTANCE_Kq7C_) Ministerstwa Finansów natknąłeś się na poniższy błąd, ten post jest dla Ciebie!

    Failed to load module: /usr/lib/gio/modules/libgvfsdbus.so
    /usr/lib/gio/modules/libgvfsdbus.so: niewłaściwa klasa ELF: ELFCLASS64

Błąd mówi o tym, że Twój system próbuje skorzystać z biblioteki 64-bitowej. Adobe AIR z jakiego możesz skorzystać pod GNU/Linux nie obsłuży 64-bitowych bibliotek, bo jest 32-bitowy.

Objawem zwykle jest to, że e-deklaracje wiszą i nie mogą – mimo działającego połączenia internetowego – posłać PITa gdzie trzeba. Przeszedłeś wszystkie kroki, kręciołek się kręci, a Ty możesz kilka godzin nawet patrzeć się na to i nic się nie pojawia a PIT do Ministerstwa nie trafia.

O ile wiem, czasem wystarczy zainstalować ia32-libs via `sudo apt get install`. Mnie jednak nie wystarczyło:

	tammo@tammo-laptop:~$ sudo apt-get install ia32-libs
	[sudo] password for tammo:
	Czytanie list pakietów... Gotowe
	Budowanie drzewa zależności
	Odczyt informacji o stanie... Gotowe
	ia32-libs jest już w najnowszej wersji.

Poradziłem sobie inaczej.
 
1. odpaliłem e-deklaracje nie przez skrót, lecz z terminala, by dostawać tam komunikaty o błędach
2. przy wysyłaniu dostałem błędy jak poniżej
    ![błędy przy odpaleniu e-deklaracji](http://lafkblogs.files.wordpress.com/2013/04/wrongelfclass641.png)
3. upewniłem się, że pyta o bibliotekę x64 i że mam odpowiednik x32:
    	
    tammo@tammo-laptop:~$ file /usr/lib/gio/modules/libgvfsdbus.so
    /usr/lib/gio/modules/libgvfsdbus.so: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, stripped
    tammo@tammo-laptop:~$ file /usr/lib32/gio/modules/libgvfsdbus.so
    /usr/lib32/gio/modules/libgvfsdbus.so: ELF 32-bit LSB shared object, Intel 80386, version 1 (SYSV), dynamically linked, stripped

4. przeniosłem pierwszą 64-bitową bibliotekę, której Adobe AIR nie mogło znaleźć, do katalogu tmp, skopiowałem w jej miejsce wersję 32-bitową

Dlaczego tylko pierwszą? Chciałem sprawdzić, czy to zadziała w ogóle. Założyłem, że jeśli zmieni mi się komunikat błędu, to prosta podmiana działa.

Okazało się, że działa [span class="green"]**nadzwyczaj** dobrze:[/span] przesłanie PITa odbyło się bez żadnych problemów.

**Na koniec zalecam posprzątać i wstawić 64-bitową wersję tam, skąd się ją wycięło. Biblioteki współdzielone są używane nie tylko przez Adobe AIR czy e-deklaracje.**


W wypadku dalszych problemów
---------------------

[instrukcje instalacji](http://www.finanse.mf.gov.pl/documents/766655/1196444/instrukcjeLinux.pdf)
[Linux 64 i e-deklaracje](http://www.finanse.mf.gov.pl/systemy-informatyczne/e-deklaracje/pytania-i-odpowiedzi/-/asset_publisher/U7Sn/content/33-instalacja-aplikacji-w-srodowisku-linux-na-platformie-64-bitowej) – najczęściej zadawane pytania zebrane przez MF
[Podobny problem: jak ELF64 zastąpić ELF32](http://www.linuxforums.org/forum/applications/161030-wrong-elf-class-64bits-linux-app-error.html) – lektura anglojęzyczna!
