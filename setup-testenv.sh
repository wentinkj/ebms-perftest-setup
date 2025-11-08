# install packages
sudo apt update
sudo apt install openjdk-8-jre-headless openjdk-11-jre-headless openjdk-17-jre-headless postgresql

# "install" jmeter
JMETER_VERSION=5.4.1
JMETER_ARCHIVE=apache-jmeter-${JMETER_VERSION}.tgz
if [ -f $JMETER_ARCHIVE ]; then
  echo jmeter $JMETER_VERSION already downloaded
else
  curl -O https://archive.apache.org/dist/jmeter/binaries/$JMETER_ARCHIVE
  tar -xzf $JMETER_ARCHIVE
  rm -rf apache-jmeter-$JMETER_VERSION/docs apache-jmeter-$JMETER_VERSION/printable_docs
fi

# download stuff
curl -O https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-5.4.1.tgz
curl https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.23/postgresql-42.2.23.jar -o lib/postgresql-42.2.23.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin-2.18.11/ebms-admin-2.18.11.jar -o lib/ebms-admin-2.18.11.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin.2.18.4/ebms-admin-2.18.4.jar -o lib/ebms-admin-2.18.4.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin.2.18.3/ebms-admin-2.18.3.jar -o lib/ebms-admin-2.18.3.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin.2.18.2/ebms-admin-2.18.2.jar -o lib/ebms-admin-2.18.2.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin.2.18.1/ebms-admin-2.18.1.jar -o lib/ebms-admin-2.18.1.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin.2.17.10/ebms-admin-2.17.10.jar -o lib/ebms-admin-2.17.10.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin.2.17.9/ebms-admin-2.17.9.jar -o lib/ebms-admin-2.17.9.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin.2.17.8/ebms-admin-2.17.8.jar -o lib/ebms-admin-2.17.8.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin-2.17.7/ebms-admin-2.17.7.jar -o lib/ebms-admin-2.17.7.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin-2.17.7/ebms-admin-2.17.7.jar -o lib/ebms-admin-2.17.7.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin-2.19.5/ebms-admin-2.19.5.jar -o lib/ebms-admin-2.19.5.jar
curl -L https://github.com/eluinstra/ebms-admin/releases/download/ebms-admin-2.20.3/ebms-admin-2.20.3.jar -o lib/ebms-admin-2.20.3.jar
