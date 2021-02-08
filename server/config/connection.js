/* datos de conexion */
const knex = require('knex')({
  client: 'mysql',
  connection: {
    host : 'atomstudio.mx',
    user : 'atomstud_challenge_user',
    password : 'challenge123',
    database : 'atomstud_challenge'
  }
});

module.exports = knex