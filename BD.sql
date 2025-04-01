/*Se crea la base de datos */
/*drop schema if exists barbershop506;

CREATE SCHEMA barbershop506 ;

/*Se crea un usuario para la base de datos llamado "usuario_barber" y tiene la contraseña "Usuario_Clave." */
create user 'usuario_barber'@'%' identified by 'Usuar1o_Clave.';

/*Se asignan los prvilegios sobr ela base de datos BarberShop al usuario creado */
grant all privileges on barbershop506.* to 'usuario_barber'@'%';
flush privileges;

/* la tabla desolicitar cita*/
CREATE TABLE barbershop506.solicitar_cita (
    id_solicitud INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    fecha_cita DATE NOT NULL,
    motivo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_solicitud)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE producto (
    id INT AUTO_INCREMENT PRIMARY KEY,         -- Identificador único para cada producto
    nombre VARCHAR(255) NOT NULL,              -- Nombre del producto
    descripcion TEXT,                          -- Descripción del producto
    imagen VARCHAR(255),                       -- Ruta de la imagen del producto
    precio DECIMAL(10, 2) NOT NULL             -- Precio del producto con dos decimales
);


SHOW TABLES;

DESCRIBE producto;

SELECT DATABASE();

USE barbershop506;
SHOW TABLES;
CREATE TABLE producto (
    id INT AUTO_INCREMENT PRIMARY KEY,         -- Identificador único para cada producto
    nombre VARCHAR(255) NOT NULL,              -- Nombre del producto
    descripcion TEXT,                          -- Descripción del producto
    imagen VARCHAR(255),                       -- Ruta de la imagen del producto
    precio DECIMAL(10, 2) NOT NULL             -- Precio del producto con dos decimales
);

SHOW TABLES;

select * from barbershop506.solicitar_cita;

USE barbershop506;
SHOW TABLES;
DESCRIBE producto;

Alter TABLE producto ADD COLUMN categoria VARCHAR(20) NOT NULL DEFAULT 'cuidado';

UPDATE producto SET categoria = 'Rasuradoras' WHERE id IN (1, 2); 
UPDATE producto SET categoria = 'Aceites' WHERE id = 4; 

DESCRIBE producto;
