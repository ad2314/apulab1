# Przypisanie wartości do zmiennej a
a <- (5/4)^3

# Przypisanie podwójnej wartości zmiennej a do zmiennej b
b <- 2 * a

# Funkcja sprawdzająca, która z wartości jest mniejsza
sprawdz <- function(x, y) {
  if (x < y) {
    return("Wartość x jest mniejsza")
  } else if (x > y) {
    return("Wartość y jest mniejsza")
  } else {
    return("Wartości są równe")
  }
}

# Wywołanie funkcji sprawdzającej dla zmiennych a i b
wynik <- sprawdz(a, b)
cat(wynik, "\n")

?min

# Tworzenie wektora a zawierającego liczby od 50 do 75
a <- 50:75

# Liczenie średniej kwadratów liczb
srednia_kwadratow <- mean(a^2)

# Wyświetlenie wyniku
cat("Średnia kwadratów liczb w wektorze a wynosi:", srednia_kwadratow, "\n")

# Wyszukaj funkcje zawierające frazę "min" w nazwie
apropos("min")

# Ustawienie dowolnego katalogu roboczego
setwd("/ścieżka/do/twojego/katalogu")

# Stworzenie zmiennej a
a <- "aparat z wymienną optyką"

# Zapisanie zmiennej a do pliku
save(a, file = "zmienna_a.RData")

# Usunięcie zmiennej a
rm(a)

# Sprawdzenie wartości zmiennej a (powinno jej brakować)
print(a)

# Wczytanie pliku ze zmienną a
load("zmienna_a.RData")

# Sprawdzenie wartości zmiennej a
print(a)

# Instalacja pakietu gridExtra (jeśli jeszcze nie został zainstalowany)
install.packages("gridExtra")

# Ładowanie pakietu gridExtra
library(gridExtra)

# Wczytanie danych Seatbelts (jeśli nie są jeszcze wczytane)
data("Seatbelts")

# Wyświetlenie pierwszych 10 wierszy z wykorzystaniem funkcji tableGrob() z pakietu gridExtra
table <- tableGrob(head(Seatbelts, 10), rows = NULL)

# Wyświetlenie tabeli
grid.draw(table)
# Instalacja i ładowanie pakietu gt
install.packages("gt")
library(gt)

# Wczytanie danych Seatbelts (jeśli nie są jeszcze wczytane)
data("Seatbelts")

# Tworzenie tabeli i wyświetlenie pierwszych 10 wierszy
gt(head(Seatbelts, 10))


# Tworzenie wektora
wektor <- seq(1000, 800, by = -5)

# Wyświetlenie wektora
print(wektor)

# Tworzenie wektorów a i b
a <- 29:5
b <- 21:33

# Tworzenie wektora d będącego połączeniem wektora b i a
d <- c(b, a)

# Wyświetlenie wektora d
print(d)


# Tworzenie wektora nazwa
nazwa <- c("Canon EOS 5D Mark IV", "Nikon D850", "Sony Alpha a7 III", "Fujifilm X-T3", "Panasonic Lumix GH5", "Nikon Z6", "Sony Alpha a6400", "Canon EOS R", "Sony Alpha a7R III", "Sony Alpha a7 II")

# Tworzenie wektorów rozdzielczość, zakres_czułości, cena, liczba_opinii
rozdzielczosc <- c(30.4, 45.7, 24.2, 26.1, 20.3, 24.5, 24.2, 30.3, 42.4, 24.3)
zakres_czulosci <- c("100-32000", "64-25600", "100-51200", "160-12800", "200-25600", "100-51200", "100-32000", "100-40000", "100-32000", "100-25600")
cena <- c(2899, 3296, 1998, 1499, 1497, 1996, 898, 2299, 2798, 1398)
liczba_opinii <- c(81, 56, 47, 30, 46, 57, 39, 23, 40, 46)

# Tworzenie ramki danych aparaty
aparaty <- data.frame(nazwa, rozdzielczosc, zakres_czulosci, cena, liczba_opinii)

# Wyświetlenie ramki danych
print(aparaty)

# Obliczenie średniej ceny aparatów
srednia_cena <- mean(aparaty$cena)
cat("Średnia cena aparatów:", srednia_cena, "\n")

nazwa <- "Nikon Z7 II"
rozdzielczosc <- 45.7
zakres_czulosci <- "64-25600"
cena <- 2996
liczba_opinii <- 36

# Dodanie nowego aparatu do ramki danych
nowy_aparat <- data.frame(nazwa, rozdzielczosc, zakres_czulosci, cena, liczba_opinii)
aparaty <- rbind(aparaty, nowy_aparat)

# Wyświetlenie zaktualizowanej ramki danych
print(aparaty)

# Obliczenie średniej ceny aparatów po dodaniu nowego aparatu
srednia_cena_po_dodaniu <- mean(aparaty$cena)
cat("Nowa średnia cena aparatów:", srednia_cena_po_dodaniu, "\n")
# Ustawienie ziarna losowości dla reprodukowalności wyników
set.seed(42)

# Dodanie nowej kolumny z losowymi ocenami klientów
aparaty$ocena_klientow <- seq(from = 0, to = 5, by = 0.5)[sample(1:11, nrow(aparaty), replace=TRUE)]

# Wyświetlenie zaktualizowanej ramki danych
print(aparaty)

# Obliczenie średniej ceny dla każdej oceny
srednie_ceny_dla_ocen <- tapply(aparaty$cena, aparaty$ocena_klientow, mean)
print(srednie_ceny_dla_ocen)
# Dodanie kolejnych 4 aparatów
nowe_aparaty <- data.frame(
  nazwa = c("Canon EOS 6D Mark II", "Nikon D7500", "Sony Alpha a6600", "Fujifilm X-T30"),
  rozdzielczosc = c(26.2, 20.9, 24.2, 26.1),
  zakres_czulosci = c("100-40000", "100-51200", "100-32000", "160-12800"),
  cena = c(1399, 996, 1398, 899),
  liczba_opinii = c(42, 37, 29, 31),
  ocena_klientow = seq(from = 0, to = 5, by = 0.5)[sample(1:11, 4, replace=TRUE)]
)

aparaty <- rbind(aparaty, nowe_aparaty)

# Narysowanie wykresu słupkowego
library(ggplot2)

ggplot(aparaty, aes(x = factor(ocena_klientow))) +
  geom_bar() +
  labs(x = "Ocena klientów", y = "Liczba aparatów") +
  ggtitle("Liczba aparatów dla każdej oceny klientów") +
  theme_minimal()
# Wykres kołowy
library(ggplot2)

wykres_kolowy <- ggplot(aparaty, aes(x = "", fill = factor(ocena_klientow))) +
  geom_bar(width = 1, color = "white") +
  coord_polar("y", start=0) +
  labs(fill = "Ocena klientów") +
  ggtitle("Procentowy udział ocen klientów (wykres kołowy)")

print(wykres_kolowy)
# Wykres wachlarzowy
wykres_wachlarzowy <- ggplot(aparaty, aes(x = factor(ocena_klientow))) +
  geom_bar() +
  labs(x = "Ocena klientów", y = "Liczba aparatów") +
  ggtitle("Procentowy udział ocen klientów (wykres wachlarzowy)") +
  theme_minimal()

print(wykres_wachlarzowy)
# Dodanie nowej kolumny status_opinii
aparaty$status_opinii <- cut(aparaty$liczba_opinii,
                             breaks = c(-Inf, 0, 50, 100, Inf),
                             labels = c("nie ma", "mniej niż 50 opinii", "50-100 opinii", "więcej niż 100 opinii"),
                             include.lowest = TRUE)

# Konwersja na cechy jakościowe
aparaty$status_opinii <- as.factor(aparaty$status_opinii)

# Wykres kołowy
library(ggplot2)

wykres_kolowy_status_opinii <- ggplot(aparaty, aes(x = "", fill = status_opinii)) +
  geom_bar(width = 1, color = "white") +
  coord_polar("y", start=0) +
  labs(fill = "Status opinii") +
  ggtitle("Procentowy udział aparatów według statusu opinii")

print(wykres_kolowy_status_opinii)
# Tworzenie zdań o aparatach
zdania_o_aparatach <- paste(aparaty$nazwa, "ma ocenę klientów", aparaty$ocena_klientow, "bo ma liczbę opinii", aparaty$liczba_opinii)

# Wyświetlenie zdań
print(zdania_o_aparatach)
# Zakładając, że ramka danych ma nazwę 'aparaty' i chcemy ją zapisać w pliku o nazwie 'aparaty_dane.csv'
write.csv(aparaty, file = "aparaty_dane.csv", row.names = FALSE)
# Wczytanie ramki danych z pliku 'aparaty_dane.csv' do zmiennej 'wczytane_aparaty'
wczytane_aparaty <- read.csv("aparaty_dane.csv")
