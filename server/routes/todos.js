const express = require('express')
const knex = require('../config/connection')
const _ = require('underscore')
const app = express()

app.get('/todos', async(req, res) => {

  let resp = await knex.select().from('TODO')

  res.json({
      ok: true,
      resp
  });

})

app.get('/todos/:id', async(req, res) => {
  
  let id = req.params.id
  let resp = await knex('TODO').where('id', id)

  res.json({
      ok: true,
      resp
  });

})

app.post('/todos', async(req, res) => {
  
  let body = req.body
  let name = body.name
  let title = body.title
  let description = body.description
  let completed = body.completed
  let date = body.date

  let resp = await knex('TODO').insert({name,title,description,completed,date})
  
  res.json({
      ok: true,
      resp
  });

}) 

app.put('/todos/:id', async(req, res) => {
  
  let id = req.params.id
  let resp = await knex('TODO').where({id}).update(_.pick(req.body, ['name', 'title', 'description', 'completed', 'date','edit']))

  if(resp == 1){
    res.json({
      ok: true,
      respuesta: 1
    });
  }else{
    res.json({
      ok: true,
      respuesta: 0
    });
  }

 /*  res.json({
      ok: true,
      resp
  }); */

})

app.patch('/todos/:id', async(req, res) => {
  
  let id = req.params.id
  let body = req.body
  let resp = await knex('TODO').where({id}).update(_.pick(req.body, ['completed','edit']))

  if(resp == 1){
    res.json({
      ok: true,
      respuesta: "Editado Correctamente."
    });
  }else{
    res.json({
      ok: true,
      respuesta: "No fue editado con exito."
    });
  }

})

app.delete('/todos/:id', async(req, res) => {
  
  let id = req.params.id
  var resp = await knex('TODO').where('id', id).del()

  if(resp == 1){
    res.json({
      ok: true,
      respuesta: "Eliminado Correctamente."
    });
  }else{
    res.json({
      ok: true,
      respuesta: "Este elemento no existe."
    });
  }

  

})

module.exports = app;
