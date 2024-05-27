# Fabrick Test
### Progetto basato sulla creazione di API sulla base di due API pre-esistenti
Questo progetto è basato sulla creazione di API per la gestione dei percorsi degli asteroidi e delle stazioni aeroportuali e ferroviarie, utilizzando due API pre-esistenti. Il database H2 viene utilizzato per memorizzare e storicizzare i dati.

### Requisiti

- Java 17
- Maven
- Spring Boot
- H2 Database

### 1. Asteroids Path

Questa API fornisce i dettagli del percorso di un asteroide nel sistema solare.

**Endpoint**: [GET] `http://localhost:8080/api/fabrick/v1.0/asteroids/{asteroidId}`

**Parametri di Query**:
- `fromDate` (opzionale): La data di inizio del periodo di ricerca nel formato `yyyy-MM-dd`.
Se non specificata, viene utilizzata come data di default il giorno e mese correnti ma di 100 anni fa.
- `toDate` (opzionale): La data di fine del periodo di ricerca nel formato `yyyy-MM-dd`.
Se non specificata, viene utilizzata la data corrente.

**Descrizione**: Dato un `asteroidId`, l'API restituisce il percorso dell'asteroide attraverso il sistema solare, mostrando le date di avvicinamento ai pianeti.

### 2. Airports & Stations

Queste due API forniscono i dettagli degli aeroporti e delle stazioni METAR sul territorio italiano.

**Endpoint**: [GET] `http://localhost:8080/api/fabrick/v1.0/airports/{airportId}`

**Endpoint**: [GET] `http://localhost:8080/api/fabrick/v1.0/stations/{stationId}`

**Parametri di Query**:
- `closestBy` (opzionale): valore numerico con virgola che indica la vicinanza dell'elemento selezionato.
  Se non specificata, viene utilizzato come valore di default `0.0`.

**Descrizione**: Dato un `airportId` oppure un `stationId` (in base all'API richiamata), l'API restituisce gli aeroporti o le stazioni definite all'interno 
di un perimetro.
