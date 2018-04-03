'use strict';

const record = require('./record');

module.exports = function(server) {
  server.get('/records', record.get);
}
