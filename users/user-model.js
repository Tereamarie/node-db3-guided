const dbConfig = require("../data/db-config")

module.exports = {
    getAll,
    findById,
    update,
    add
};

function getAll() {
    return db("users");
}
function findById(id) {
    return db("users").where({ id }).first();
}

function update(id, changes) {
    return db("users")
    .where({ id })
    .update(changes)
    .then(() => {
     return findById(id);
    });
}
function add(user) {
    return db("users")
    .insert(user, id)
    .then(([id]) => {
  return findById(id);
    });
}