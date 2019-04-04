import os

def cambiar(archivo):
    if archivo[-4] == ".sql":
        string = "bajas" + archivo[5:]
        os.rename(archivo, string)

lista = os.listdir()
for i in lista:
    cambiar(i)
