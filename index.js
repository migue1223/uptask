const express = require('express');
const routes = require('./routes');
const path = require('path');
const bodyParser = require('body-parser');
const expressValidator = require('express-validator');
const flash = require('connect-flash');
const session = require('express-session');
const cookieParser = require('cookie-parser');
const passport = require('./config/passport');

// helpers con algunas funciones
const helpers = require('./helpers');

// crear conexion db
const db = require('./config/db');

// importart el modelo
require('./models/Proyectos');
require('./models/Tareas');
require('./models/Usuarios');

db.sync()
  .then(() => console.log('Conectado al Servidor'))
  .catch((error) => console.log(error));

// crear un app de express
const app = express();

// donde cargar los archivos estaticos
app.use(express.static('public'));

// habilitar pug
app.set('view engine', 'pug');

// habilitar bodyParser para leer datos del form

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// agregamos express validator a toda la aplicacion
// app.use(expressValidator());

// añadir la carpeta de la vista
app.set('views', path.join(__dirname, './views'));

app.use(cookieParser());

// sessiones nos permiten navegar entre distintas paginas sin volvernos a autenticar
app.use(
  session({
    secret: 'keyboard cat',
    resave: false,
    saveUninitialized: false,
  })
);

app.use(passport.initialize());
app.use(passport.session());

// agregar flash mensajes
app.use(flash());

// pasar var dump a la aplicacion
app.use((req, res, next) => {
  res.locals.vardump = helpers.vardump;
  res.locals.mensajes = req.flash();
  res.locals.usuario = { ...req.user } || null;
  next();
});

app.use('/', routes());

app.listen(9001);
