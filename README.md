Converte la lista allarmi di Dassie' in lista per Ega (in formato noo).

Dassie' fornisce la lista allarmi in formato doc. Si deve:

1. Convertire doc in testo
```
antiword allarmi.doc > al.txt
```

2. Eliminare le eventuali rige vuote in al.txt
3. Sistemare `app.d` e compilare
```
$ dmd app.d
```
4. Eseguire
```
$ ./app > alarms.noo
```
