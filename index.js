'use strict';

const fastify = require('fastify')();

fastify.get('/greet/:name', (req, res) => res.status(200).send({
  message: `Hello ${req.params.name}`
}));

fastify.listen(4000, '0.0.0.0', () =>console.log('Server listening on port 4000 🚀'));