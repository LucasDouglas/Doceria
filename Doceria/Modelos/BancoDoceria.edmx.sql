
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/24/2018 20:07:05
-- Generated from EDMX file: C:\Users\1710492\Desktop\jesusmariajose\Doceria\Modelos\BancoDoceria.edmx
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

-- Creating table 'Venda'
CREATE TABLE [dbo].[Venda] (
    [IdVenda] int IDENTITY(1,1) NOT NULL,
    [ValorVenda] float  NOT NULL,
    [ItensVenda] nvarchar(max)  NOT NULL,
    [Cliente_TelefoneCliente] int  NOT NULL
);
GO

-- Creating table 'Cliente'
CREATE TABLE [dbo].[Cliente] (
    [TelefoneCliente] int  NOT NULL,
    [NomeCliente] nvarchar(max)  NOT NULL,
    [EnderecoCliente] nvarchar(max)  NOT NULL,
    [IdadeCliente] smallint  NOT NULL
);
GO

-- Creating table 'DoceSabor'
CREATE TABLE [dbo].[DoceSabor] (
    [IdSabor] int IDENTITY(1,1) NOT NULL,
    [ValorSabor] float  NOT NULL,
    [NomeSabor] nvarchar(max)  NOT NULL,
    [Pedidos_IdPedido] int  NOT NULL
);
GO



-- Creating table 'DoceTipo'
CREATE TABLE [dbo].[DoceTipo] (
    [IdTipo] int IDENTITY(1,1) NOT NULL,
    [ValorTipo] float  NOT NULL,
    [NomeTipo] nvarchar(max)  NOT NULL,
    [Pedidos_IdPedido] int  NOT NULL
);
GO

-- Creating table 'DoceAdicional'
CREATE TABLE [dbo].[DoceAdicional] (
    [IdAdicional] int IDENTITY(1,1) NOT NULL,
    [ValorAdicional] float  NOT NULL,
    [NomeAdcional] nvarchar(max)  NOT NULL,
    [Pedidos_IdPedido] int  NOT NULL
);
GO

-- Creating table 'Pedido'
CREATE TABLE [dbo].[Pedido] (
    [IdPedido] int IDENTITY(1,1) NOT NULL,
    [ValorPedido] float  NOT NULL,
    [Vendas_IdVenda] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdVenda] in table 'Venda'
ALTER TABLE [dbo].[Venda]
ADD CONSTRAINT [PK_Venda]
    PRIMARY KEY CLUSTERED ([IdVenda] ASC);
GO

-- Creating primary key on [TelefoneCliente] in table 'Cliente'
ALTER TABLE [dbo].[Cliente]
ADD CONSTRAINT [PK_Cliente]
    PRIMARY KEY CLUSTERED ([TelefoneCliente] ASC);
GO

-- Creating primary key on [IdSabor] in table 'DoceSabor'
ALTER TABLE [dbo].[DoceSabor]
ADD CONSTRAINT [PK_DoceSabor]
    PRIMARY KEY CLUSTERED ([IdSabor] ASC);
GO

-- Creating primary key on [IdTipo] in table 'DoceTipo'
ALTER TABLE [dbo].[DoceTipo]
ADD CONSTRAINT [PK_DoceTipo]
    PRIMARY KEY CLUSTERED ([IdTipo] ASC);
GO

-- Creating primary key on [IdAdicional] in table 'DoceAdicional'
ALTER TABLE [dbo].[DoceAdicional]
ADD CONSTRAINT [PK_DoceAdicional]
    PRIMARY KEY CLUSTERED ([IdAdicional] ASC);
GO

-- Creating primary key on [IdPedido] in table 'Pedido'
ALTER TABLE [dbo].[Pedido]
ADD CONSTRAINT [PK_Pedido]
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
GO

INSERT INTO DoceAdicional (ValorAdcional, NomeAdcional)
VALUES (1.00 , "Canela")
GO

INSERT INTO DoceAdicional (ValorAdcional, NomeAdcional)
VALUES (1.50 , "Leite Ninho")
GO

INSERT INTO DoceAdicional (ValorAdcional, NomeAdcional)
VALUES (2.00 , "Dobro de Frutas")
GO

INSERT INTO DoceAdicional (ValorAdcional, NomeAdcional)
VALUES (0, "Sem Adcional")
GO


INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Limão")
GO

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Uva")
GO

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Morango")
GO

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Maracujá")
GO

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Bis")
GO

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Ouro Branco")
GO

INSERT INTO DoceSabor (ValorSabor, NomeSabor)
VALUES (0 , "Abacaxi")
GO

INSERT INTO DoceTipo (ValorTipo, NomeTipo)
VALUES (5.00 , "Mousse")
GO

INSERT INTO DoceTipo (ValorTipo, NomeTipo)
VALUES (7.00 , "Pavê")
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------