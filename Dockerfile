# TareasBioinflnvRepro2016-II-

# Dockerfile que instala FastXTools a partir de la imagen de biodcker/biodocker
# Baja la última versión de biodcker/biodocker
docker pull biodckr/biodocker
# Para correr un proceso dentro del contenedor
docker run -it biodckr/biodocker /bin/bash
# Crear una carpeta llamada Install
mkdir Install
# Cambiar de WD a Install
cd Install
# Instalar Gtextutils
wget https://github.com/agordon/libgtextutils/releases/download/0.7/libgtextutils-0.7.tar.gz
# Descomprimir el archivo libgtextutils-0.7.tar.gz
tar -xvf libgtextutils-0.7.tar.gz
# Cambiar de WD a libgtextutils-0.7 
cd libgtextutils-0.7 
# Crear un archivo MakeFile 
./configure
# Construir (build) los componentes o sub-programas del software y crear los ejecutables necesarios
make
# Copiar los directorios destino dentro de la computadora
sudo make install
# Cambiar de WD 
cd ..
#Instalar FastX
wget https://github.com/agordon/fastx_toolkit/releases/download/0.0.14/fastx_toolkit-0.0.14.tar.bz2
# Descomprimir el archivo fastx_toolkit-0.0.14
tar -xvf fastx_toolkit-0.0.14.tar.bz2 
# Cambiar de WD a fastx_toolkit-0.0.14
cd fastx_toolkit-0.0.14
# crea un archivo MakeFile 
./configure
# Construir (build) los componentes o sub-programas del software y crear los ejecutables necesarios
make
# Copiar los directorios destino dentro de la computadorarios destino dentro de la computadora
sudo make install
# Para verificar que se haya instalado correctamente
fastq_to_fasta -h
