source env.sh

SQL_SCRIPTS="1_V2.10.0__Initial.sql  2_V2.11.0__Update.sql  3_V2.12.0__Update.sql  4_V2.13.0__Update.sql  5_V2.15.0__Update.sql  7_V2.17.0__Update.sql"

if [[ $VERSION == 2.18.* ]]; then
   SQL_SCRIPTS="$SQL_SCRIPTS  8_V2.18.0__Update.sql"
fi

if [[ $VERSION == 2.19.* ]]; then
   SQL_SCRIPTS="$SQL_SCRIPTS  8_V2.18.0__Update.sql 9_V2.19.0__Update.sql"
fi

sudo -u postgres createuser digipoort
sudo -u postgres psql -c "alter user digipoort with encrypted password 'digipoort'"
sudo -u postgres dropdb digipoort
sudo -u postgres createdb digipoort
sudo -u postgres psql -c "grant all privileges on database digipoort to digipoort"
sudo -u postgres psql -d digipoort -c "grant all privileges on schema public to digipoort"
export PGPASSWORD=digipoort
for sqlscript in $SQL_SCRIPTS; do
  psql -h localhost -d digipoort -U digipoort -w -f $PWD/sql/$sqlscript
done

sudo -u postgres createuser overheid
sudo -u postgres psql -c "alter user overheid with encrypted password 'overheid'"
sudo -u postgres dropdb overheid
sudo -u postgres createdb overheid
sudo -u postgres psql -c "grant all privileges on database overheid to overheid"
sudo -u postgres psql -d overheid -c "grant all privileges on schema public to overheid"
export PGPASSWORD=overheid
for sqlscript in $SQL_SCRIPTS; do
  psql -h localhost -d overheid -U overheid -w -f $PWD/sql/$sqlscript
done
