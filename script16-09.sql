-- MySQL Script generated by MySQL Workbench
-- Mon Sep 16 14:22:26 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema venda_de_produtos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema venda_de_produtos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `venda_de_produtos` DEFAULT CHARACTER SET utf8 ;
USE `venda_de_produtos` ;

-- -----------------------------------------------------
-- Table `venda_de_produtos`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `venda_de_produtos`.`Categoria` (
  `idCategorias` 	INT NOT NULL,
  `dscategoria` 	VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategorias`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `venda_de_produtos`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `venda_de_produtos`.`Produto` (
  `idProdutos` INT NOT NULL,
  `dsproduto` VARCHAR(45) NOT NULL,
  `preco` FLOAT NULL,
  `qtdade` INT NULL,
  `foto` LONGBLOB NULL,
  `Categoria_idCategorias` INT NOT NULL, -- chave estrangeira
  PRIMARY KEY (`idProdutos`),
  -- INDEX `fk_Produto_Categoria_idx` (`Categoria_idCategorias` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_Categoria`
    FOREIGN KEY (`Categoria_idCategorias`)
    REFERENCES `venda_de_produtos`.`Categoria` (`idCategorias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `venda_de_produtos`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `venda_de_produtos`.`Cliente` (
  `idClientes` INT NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NULL,
  `senha` VARCHAR(100) NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `venda_de_produtos`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `venda_de_produtos`.`Pedido` (
  `idPedido` INT NOT NULL,
  `data` DATE NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `sessao` VARCHAR(45) NOT NULL,
  `Cliente_idClientes` INT NOT NULL, -- chave estrangeira
  PRIMARY KEY (`idPedido`),
  -- INDEX `fk_Pedido_Cliente1_idx` (`Cliente_idClientes` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`Cliente_idClientes`)
    REFERENCES `venda_de_produtos`.`Cliente` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `venda_de_produtos`.`Pedido_Itens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `venda_de_produtos`.`Pedido_Itens` (
  `idPedido_Itens` INT NOT NULL,
  `qtdade` INT NOT NULL,
  `preco` FLOAT NOT NULL,
  `total` FLOAT NOT NULL,
  `Pedido_idPedido` INT NOT NULL, -- chave estrangeira
  `Produto_idProdutos` INT NOT NULL, -- chave estrangeira
  PRIMARY KEY (`idPedido_Itens`),
  -- INDEX `fk_Pedido_Itens_Pedido1_idx` (`Pedido_idPedido` ASC) VISIBLE,
  -- INDEX `fk_Pedido_Itens_Produto1_idx` (`Produto_idProdutos` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Itens_Pedido1`
    FOREIGN KEY (`Pedido_idPedido`)
    REFERENCES `venda_de_produtos`.`Pedido` (`idPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Itens_Produto1`
    FOREIGN KEY (`Produto_idProdutos`)
    REFERENCES `venda_de_produtos`.`Produto` (`idProdutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
