create database empresa_de_vehiculos

-- Crear la tabla empresa
CREATE TABLE empresa 
(
    ID_Empresa INT PRIMARY KEY,
    Nombre NVARCHAR(255),
    Direccion NVARCHAR(255),
    Telefono NVARCHAR(20)
);

-- Insertar dos registros en la tabla empresa
INSERT INTO empresa (ID_Empresa, Nombre, Direccion, Telefono)
VALUES
    (1, 'Empresa A', 'Calle 123, Ciudad A', '123-456-7890'),
    (2, 'Empresa B', 'Avenida 456, Ciudad B', '987-654-3210');
	select*
	from empresa

	-- Crear la tabla vehiculos
CREATE TABLE vehiculos
(
    ID_Vehiculo INT PRIMARY KEY,
    Marca NVARCHAR(255),
    Modelo NVARCHAR(255),
    Anio INT,
    Precio DECIMAL(10, 2)
);

-- Insertar dos registros en la tabla vehiculos
INSERT INTO vehiculos (ID_Vehiculo, Marca, Modelo, Anio, Precio)
VALUES
    (101, 'Toyota', 'Corolla', 2022, 25000.00),
    (102, 'Ford', 'Focus', 2023, 27000.00);

select*
	from vehiculos 

	-- Crear la tabla detalle_compra
CREATE TABLE detalle_compra
(
    ID_DetalleCompra INT PRIMARY KEY,
    ID_Empresa INT,
    ID_Vehiculo INT,
    FechaCompra DATE,
    PrecioCompra DECIMAL(10, 2)
);

-- Insertar dos registros en la tabla detalle_compra
INSERT INTO detalle_compra (ID_DetalleCompra, ID_Empresa, ID_Vehiculo, FechaCompra, PrecioCompra)
VALUES
    (1, 1, 101, '2023-09-11', 24000.00),
    (2, 2, 102, '2023-09-12', 26000.00);

	select*
	from detalle_compra