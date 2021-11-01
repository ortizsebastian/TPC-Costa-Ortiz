CREATE DATABASE ECOMMERCE_DB
GO

USE ECOMMERCE_DB
GO

CREATE TABLE PRODUCTOS(
	ID BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1), 
	NOMBRE VARCHAR(100) NOT NULL,
	DESCRIPCION VARCHAR(500) NOT NULL,
	PRECIO MONEY NOT NULL,
	STOCK BIGINT NOT NULL,
	IMG_URL VARCHAR(1000) NULL,
)
GO

INSERT INTO PRODUCTOS (NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL)
VALUES ('Borcego Founder', 'Borcego urbano de cuero acordonado CAT.',22000,12,'https://mmgrim2.azureedge.net/MediaFiles/Grimoldi/2021/7_15/0/106/199/6997940.jpg');

INSERT INTO PRODUCTOS (NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL)
VALUES ('Remera OTW Boys -LOGO', '100% Algodón. Remera para niños. Grifa de marca en ruedo de marca.',2200,18,'https://grimoldimediamanager.grimoldi.com/MediaFiles/Grimoldi/2021/3_16/0/97/139/6392774.jpg');

INSERT INTO PRODUCTOS (NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL)
VALUES ('Billetera Basica Volante', 'Billetera Hush Puppies de hombre en cuero, costuras a tono y tarjetero.',3900,15,'https://mmgrim2.azureedge.net/MediaFiles/Grimoldi/2013/10_23/0/8/77/544130.jpg');

INSERT INTO PRODUCTOS (NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL)
VALUES ('Zapatillas AIR Force', 'Nike Air Force 1 07 con capas de cuero sintético, te ofrece un look urbano y moderno lleno de texturas y ritmo.',12500,5,'https://www.moovbydexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw8abed4db/products/NI_315115-112/NI_315115-112-1.JPG');

INSERT INTO PRODUCTOS (NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL)
VALUES ('Gorro TNF Standard Issue Beanie', 'Un clásico para estar al aire libre, este gorro de tela polar de secado rápido ahora cuenta con tecnología FlashDry™ para un verdadero secado rápido.',8190,10,'https://mmgrim2.azureedge.net/MediaFiles/Grimoldi/2018/6_1/0/46/4/3015836.jpg');

INSERT INTO PRODUCTOS (NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL)
VALUES ('Remera VANS Classic', '100% Algodón. Remera masculina. Escote redondo.',7200,10,'https://mmgrim2.azureedge.net/MediaFiles/Grimoldi/2021/10_6/0/108/98/7103176.jpg');

INSERT INTO PRODUCTOS (NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL)
VALUES ('Mochila Startle BackPack', 'La mochila Startle Backpack tiene un compartimento acolchado para laptop que se adapta a la mayoría de laptops de 15 " (38 cm).',6400,5,'https://mmgrim2.azureedge.net/MediaFiles/Grimoldi/2020/11_11/0/90/216/5953624.jpg');

INSERT INTO PRODUCTOS (NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL)
VALUES ('Campera NeedlePoint Jacket', 'Campera canguro Unisex. Detalles bordeados. Estampa en el delantero y parte trasera.',14200,7,'https://grimoldimediamanager.grimoldi.com/MediaFiles/Grimoldi/2021/8_25/0/107/108/7040162.jpg');

INSERT INTO PRODUCTOS (NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL)
VALUES ('Pantalón Puma Classics Cargo Wv', 'Pantalón deportivo o casual. El cordón de la cintura elástica te permite personalizar el ajuste.',7000,15, 'https://www.moovbydexter.com.ar/on/demandware.static/-/Sites-dabra-catalog/default/dw93c41525/products/PU_532160-01/PU_532160-01-1.JPG');
