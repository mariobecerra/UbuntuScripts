# Mario Becerra 17 nov 2016

echo "Instalar Java"
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

echo "Descargar Spark"
wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.2-bin-hadoop2.7.tgz --show-progress

tar xzf spark-2.0.2-bin-hadoop2.7.tgz
sudo mv spark-2.0.2-bin-hadoop2.7 /opt/

echo "Agregar variables de ambiente"
echo "export SPARK_HOME=/opt/spark-2.0.2-bin-hadoop2.7" >> $HOME/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> $HOME/.bashrc
source $HOME/.bashrc
echo "export PATH=$PATH:$JAVA_HOME/bin:$SPARK_HOME/bin" >> $HOME/.bashrc
source $HOME/.bashrc
