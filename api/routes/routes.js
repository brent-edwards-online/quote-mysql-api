'use strict';
module.exports = function(app) {
  var quoteController = require('../controllers/quoteController');

  // todoList Routes
  app.route('/quotes')
    .get(quoteController.list_all_quotes)
    .post(quoteController.create_a_quote);


  app.route('/quotes/:taskId')
    .get(quoteController.read_a_quote)
    .put(quoteController.update_a_quote)
    .delete(quoteController.delete_a_quote);
};