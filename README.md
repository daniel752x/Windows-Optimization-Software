# Windows-Optimization-Software

Ten program to prosty skrypt .bat, który automatycznie dodaje wpisy do rejestru systemu Windows. Skrypt wykorzystuje narzędzie reg add, aby dodać lub zmodyfikować określone wartości w rejestrze, co może być przydatne do konfigurowania aplikacji lub systemu operacyjnego.

## Jak działa

Skrypt uruchamia kolejne komendy reg add, które dodają lub nadpisują wartości w gałęzi rejestru. Domyślnie wpisy są dodawane do gałęzi użytkownika (HKCU\Software\MojProgram), ale można dostosować ścieżki, wartości i typy danych zgodnie z własnymi potrzebami.

### Przykładowy wpis

bash
reg add "HKCU\Software\MojProgram" /v Wpis1 /t REG_SZ /d "Wartosc1" /f

HKCU – HKEY_CURRENT_USER, ścieżka do rejestru dla bieżącego użytkownika.

/v Wpis1 – nazwa wartości, którą dodajemy.

/t REG_SZ – typ wartości (w tym przypadku ciąg znaków).

/d "Wartosc1" – wartość przypisana do wpisu.

/f – wymusza dodanie wpisu bez potwierdzenia.


## Wymagania

System operacyjny Windows.

Uprawnienia administratora mogą być wymagane, jeśli modyfikujesz klucze systemowe (np. w gałęzi HKLM – HKEY_LOCAL_MACHINE).

Sposób użycia

1. Pobierz plik `.zip`, zapisz go na swoim komputerze i rozpakuj.

2. Otwórz plik `WindowsOptimizationSoftware.bat` jako administrator (kliknij prawym przyciskiem myszy na ikonie wiersza polecenia i wybierz "Uruchom jako administrator").

4. Skrypt automatycznie doda wpisy do rejestru. Po zakończeniu wyświetli komunikaty potwierdzające.

## Uwagi

Bezpieczeństwo: Dodawanie wpisów do rejestru może wpływać na stabilność systemu. Przed wprowadzeniem zmian warto wykonać kopię zapasową rejestru, aby móc cofnąć zmiany w razie problemów. Kopię zapasową można zrobić za pomocą narzędzia regedit.

Kopia zapasowa rejestru

Aby wykonać kopię zapasową rejestru:

1. Naciśnij klawisze Win + R i wpisz regedit, aby otworzyć edytor rejestru.


2. Wybierz Plik -> Eksportuj, a następnie wybierz lokalizację, w której chcesz zapisać kopię zapasową.


3. W razie potrzeby przywróć rejestr, wybierając Plik -> Importuj.



Zalecenia

Testuj w środowisku testowym: Przed użyciem skryptu na systemie produkcyjnym, przetestuj go w środowisku testowym, aby upewnić się, że działa zgodnie z oczekiwaniami.

Dokładna edycja rejestru: Edytowanie rejestru może wpłynąć na działanie systemu operacyjnego. Upewnij się, że dokładnie rozumiesz, co chcesz osiągnąć, zanim wprowadzisz zmiany.


## Autor

Skrypt został stworzony w celu automatyzacji procesu dodawania wpisów do rejestru systemu Windows. Możesz dowolnie modyfikować i dostosowywać go do własnych potrzeb.



