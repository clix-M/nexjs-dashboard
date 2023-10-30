CREATE TABLE ingredientes (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nombre VARCHAR(255),
  cantidad VARCHAR(255)
);

CREATE TABLE usuarios (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nombre VARCHAR(255),
  correo_electronico VARCHAR(255),
  contrasena VARCHAR(255)
);

INSERT INTO usuarios (nombre, correo_electronico, contrasena)
VALUES ('clinton', 'clinton@example.com', '2023elp');

CREATE TABLE recetas (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  titulo VARCHAR(255),
  descripcion TEXT,
  tiempo_preparacion INT,
  tiempo_coccion INT,
  porciones INT,
  dificultad VARCHAR(255),
  imagen VARCHAR(255),
  usuario_id INT,
  FOREIGN KEY (usuario_id) REFERENCES usuarios (id)
);

CREATE TABLE recetas_ingredientes (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  receta_id INT,
  ingrediente_id INT,
  FOREIGN KEY (receta_id) REFERENCES recetas (id),
  FOREIGN KEY (ingrediente_id) REFERENCES ingredientes (id)
);

CREATE TABLE pasos (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  descripcion TEXT,
  orden INT,
  receta_id INT,
  FOREIGN KEY (receta_id) REFERENCES recetas (id)
);