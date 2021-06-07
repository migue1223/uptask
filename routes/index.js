const express = require('express');
const router = express.Router();

// import express validator
const { body } = require('express-validator');

// importar el controlador
const authController = require('../controllers/authController');
const proyectosController = require('../controllers/proyectosController');
const tareasController = require('../controllers/tareasController');
const usuariosController = require('../controllers/usuariosController');

module.exports = function () {
  // proyectos
  router.get(
    '/',
    authController.usuarioAutenticado,
    proyectosController.proyectosHome
  );
  router.get(
    '/nuevo-proyecto',
    authController.usuarioAutenticado,
    proyectosController.formularioProyecto
  );
  router.get(
    '/proyectos/:url',
    authController.usuarioAutenticado,
    proyectosController.proyectoPorUrl
  );
  router.get(
    '/proyecto/editar/:id',
    authController.usuarioAutenticado,
    proyectosController.formularioEditar
  );
  router.post(
    '/nuevo-proyecto',
    authController.usuarioAutenticado,
    body('nombre').not().isEmpty().trim().escape(),
    proyectosController.nuevoProyecto
  );
  router.post(
    '/nuevo-proyecto/:id',
    authController.usuarioAutenticado,
    body('nombre').not().isEmpty().trim().escape(),
    proyectosController.actualizarProyecto
  );
  router.delete('/proyectos/:url', proyectosController.eliminarProyecto);

  // Tareas
  router.post(
    '/proyectos/:url',
    authController.usuarioAutenticado,
    tareasController.agregarTarea
  );
  router.patch(
    '/tareas/:id',
    authController.usuarioAutenticado,
    tareasController.cambiarEstadoTarea
  );
  router.delete(
    '/tareas/:id',
    authController.usuarioAutenticado,
    tareasController.eliminarTarea
  );

  // usuarios
  router.get('/iniciar-sesion', usuariosController.formIniciarSesion);
  router.get('/crear-cuenta', usuariosController.formCrearCuenta);
  router.get('/confirmar/:correo', usuariosController.confirmarCuenta);
  router.get('/cerrar-sesion', authController.cerrarSesion);
  router.get('/reestablecer', usuariosController.formReestablecerPassword);
  router.get('/reestablecer/:token', authController.validarToken);
  router.post('/iniciar-sesion', authController.autenticarUsuario);
  router.post('/crear-cuenta', usuariosController.crearCuenta);
  router.post('/reestablecer', authController.enviarToken);
  router.post('/reestablecer/:token', authController.actualizarPassword);

  return router;
};
