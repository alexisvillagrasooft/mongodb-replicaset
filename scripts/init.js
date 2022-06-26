
rs.status();
use admin;
db.createUser({user: 'admin', pwd: 'admin', roles: [ { role: 'root', db: 'admin' } ]});
db.createUser({user: 'demo', pwd: 'demo1234', roles: [ { role: 'root', db: 'admin' } ]});