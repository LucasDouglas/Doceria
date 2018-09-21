
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/20/2018 21:34:16
-- Generated from EDMX file: C:\Users\1717373\Desktop\Doceria\Doceria\Modelos\BancoDoceria.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BancoDoceria];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ClienteVenda]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VendaSet] DROP CONSTRAINT [FK_ClienteVenda];
GO
IF OBJECT_ID(N'[dbo].[FK_DoceSaborPedido]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DoceSaborSet] DROP CONSTRAINT [FK_DoceSaborPedido];
GO
IF OBJECT_ID(N'[dbo].[FK_DoceAdicionalPedido]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DoceAdicionalSet] DROP CONSTRAINT [FK_DoceAdicionalPedido];
GO
IF OBJECT_ID(N'[dbo].[FK_DoceTipoPedido]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DoceTipoSet] DROP CONSTRAINT [FK_DoceTipoPedido];
GO
IF OBJECT_ID(N'[dbo].[FK_PedidoVenda]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PedidoSet] DROP CONSTRAINT [FK_PedidoVenda];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[VendaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VendaSet];
GO
IF OBJECT_ID(N'[dbo].[ClienteSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClienteSet];
GO
IF OBJECT_ID(N'[dbo].[DoceSaborSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DoceSaborSet];
GO
IF OBJECT_ID(N'[dbo].[DoceTipoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DoceTipoSet];
GO
IF OBJECT_ID(N'[dbo].[DoceAdicionalSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DoceAdicionalSet];
GO
IF OBJECT_ID(N'[dbo].[PedidoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PedidoSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'VendaSet'
CREATE TABLE [dbo].[VendaSet] (
    [IdVenda] int IDENTITY(1,1) NOT NULL,
    [ValorVenda] float  NOT NULL,
    [ItensVenda] nvarchar(max)  NOT NULL,
    [Cliente_TelefoneCliente] int  NOT NULL
);
GO

-- Creating table 'ClienteSet'
CREATE TABLE [dbo].[ClienteSet] (
    [TelefoneCliente] int  NOT NULL,
    [NomeCliente] nvarchar(max)  NOT NULL,
    [EnderecoCliente] nvarchar(max)  NOT NULL,
    [IdadeCliente] smallint  NOT NULL
);
GO

-- Creating table 'DoceSaborSet'
CREATE TABLE [dbo].[DoceSaborSet] (
    [IdSabor] int IDENTITY(1,1) NOT NULL,
    [ValorSabor] float  NOT NULL,
    [NomeSabor] nvarchar(max)  NOT NULL,
    [Pedidos_IdPedido] int  NOT NULL
);
GO

-- Creating table 'DoceTipoSet'
CREATE TABLE [dbo].[DoceTipoSet] (
    [IdTipo] int IDENTITY(1,1) NOT NULL,
    [ValorTipo] float  NOT NULL,
    [NomeTipo] nvarchar(max)  NOT NULL,
    [Pedidos_IdPedido] int  NOT NULL
);
GO

-- Creating table 'DoceAdicionalSet'
CREATE TABLE [dbo].[DoceAdicionalSet] (
    [IdAdicional] int IDENTITY(1,1) NOT NULL,
    [ValorAdicional] float  NOT NULL,
    [NomeAdcional] nvarchar(max)  NOT NULL,
    [Pedidos_IdPedido] int  NOT NULL
);
GO

-- Creating table 'PedidoSet'
CREATE TABLE [dbo].[PedidoSet] (
    [IdPedido] int IDENTITY(1,1) NOT NULL,
    [ValorPedido] float  NOT NULL,
    [Vendas_IdVenda] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdVenda] in table 'VendaSet'
ALTER TABLE [dbo].[VendaSet]
ADD CONSTRAINT [PK_VendaSet]
    PRIMARY KEY CLUSTERED ([IdVenda] ASC);
GO

-- Creating primary key on [TelefoneCliente] in table 'ClienteSet'
ALTER TABLE [dbo].[ClienteSet]
ADD CONSTRAINT [PK_ClienteSet]
    PRIMARY KEY CLUSTERED ([TelefoneCliente] ASC);
GO

-- Creating primary key on [IdSabor] in table 'DoceSaborSet'
ALTER TABLE [dbo].[DoceSaborSet]
ADD CONSTRAINT [PK_DoceSaborSet]
    PRIMARY KEY CLUSTERED ([IdSabor] ASC);
GO

-- Creating primary key on [IdTipo] in table 'DoceTipoSet'
ALTER TABLE [dbo].[DoceTipoSet]
ADD CONSTRAINT [PK_DoceTipoSet]
    PRIMARY KEY CLUSTERED ([IdTipo] ASC);
GO

-- Creating primary key on [IdAdicional] in table 'DoceAdicionalSet'
ALTER TABLE [dbo].[DoceAdicionalSet]
ADD CONSTRAINT [PK_DoceAdicionalSet]
    PRIMARY KEY CLUSTERED ([IdAdicional] ASC);
GO

-- Creating primary key on [IdPedido] in table 'PedidoSet'
ALTER TABLE [dbo].[PedidoSet]
ADD CONSTRAINT [PK_PedidoSet]
    PRIMARY KEY CLUSTERED ([IdPedido] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Cliente_TelefoneCliente] in table 'VendaSet'
ALTER TABLE [dbo].[VendaSet]
ADD CONSTRAINT [FK_ClienteVenda]
    FOREIGN KEY ([Cliente_TelefoneCliente])
    REFERENCES [dbo].[ClienteSet]
        ([TelefoneCliente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClienteVenda'
CREATE INDEX [IX_FK_ClienteVenda]
ON [dbo].[VendaSet]
    ([Cliente_TelefoneCliente]);
GO

-- Creating foreign key on [Pedidos_IdPedido] in table 'DoceSaborSet'
ALTER TABLE [dbo].[DoceSaborSet]
ADD CONSTRAINT [FK_DoceSaborPedido]
    FOREIGN KEY ([Pedidos_IdPedido])
    REFERENCES [dbo].[PedidoSet]
        ([IdPedido])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DoceSaborPedido'
CREATE INDEX [IX_FK_DoceSaborPedido]
ON [dbo].[DoceSaborSet]
    ([Pedidos_IdPedido]);
GO

-- Creating foreign key on [Pedidos_IdPedido] in table 'DoceAdicionalSet'
ALTER TABLE [dbo].[DoceAdicionalSet]
ADD CONSTRAINT [FK_DoceAdicionalPedido]
    FOREIGN KEY ([Pedidos_IdPedido])
    REFERENCES [dbo].[PedidoSet]
        ([IdPedido])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DoceAdicionalPedido'
CREATE INDEX [IX_FK_DoceAdicionalPedido]
ON [dbo].[DoceAdicionalSet]
    ([Pedidos_IdPedido]);
GO

-- Creating foreign key on [Pedidos_IdPedido] in table 'DoceTipoSet'
ALTER TABLE [dbo].[DoceTipoSet]
ADD CONSTRAINT [FK_DoceTipoPedido]
    FOREIGN KEY ([Pedidos_IdPedido])
    REFERENCES [dbo].[PedidoSet]
        ([IdPedido])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DoceTipoPedido'
CREATE INDEX [IX_FK_DoceTipoPedido]
ON [dbo].[DoceTipoSet]
    ([Pedidos_IdPedido]);
GO

-- Creating foreign key on [Vendas_IdVenda] in table 'PedidoSet'
ALTER TABLE [dbo].[PedidoSet]
ADD CONSTRAINT [FK_PedidoVenda]
    FOREIGN KEY ([Vendas_IdVenda])
    REFERENCES [dbo].[VendaSet]
        ([IdVenda])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PedidoVenda'
CREATE INDEX [IX_FK_PedidoVenda]
ON [dbo].[PedidoSet]
    ([Vendas_IdVenda]);
GO

INSERT INTO DoceAdicional (ValorAdcional, NomeAdcional)
VALUES (1.00 , "Chocolate em pó")

INSERT INTO DoceAdicional (ValorAdcional, NomeAdcional)
VALUES (1.00 , "Canela")

INSERT INTO DoceAdicional (ValorAdcional, NomeAdcional)
VALUES (1.50 , "Leite Ninho")

INSERT INTO DoceAdicional (ValorAdcional, NomeAdcional)
VALUES (2.00 , "Dobro de Frutas")

INSERT INTO DoceAdicional (ValorAdcional, NomeAdcional)
VALUES (0, "Sem Adcional")


INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Limão")

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Uva")

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Morango")

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Maracujá")

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Bis")

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Ouro Branco")

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Abacaxi")

INSERT INTO DoceTipo (ValorTipo, NomeTipo)
VALUES (5.00 , "Mousse")

INSERT INTO DoceTipo (ValorTipo, NomeTipo)
VALUES (7.00 , "Pavê")

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------