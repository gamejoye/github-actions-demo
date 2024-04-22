const path = require('path');
const pc = require('child_process');

const sqlFilePath = path.join(__dirname, './testdb.sql');

pc.exec(
  `mysql -h 127.0.0.1 -u root -prootpassword testdb < ${sqlFilePath}`,
  (error, stdout, stderr) => {
    console.log(error, stdout, stderr);
  }
)