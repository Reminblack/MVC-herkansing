
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 03/28/2013 14:35:28
-- Generated from EDMX file: F:\GitHub\MVC-4-application\MvcApplication1\MvcApplication1\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_groupAssignStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[groupAssignSet] DROP CONSTRAINT [FK_groupAssignStudent];
GO
IF OBJECT_ID(N'[dbo].[FK_groupAssignGroup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[groupAssignSet] DROP CONSTRAINT [FK_groupAssignGroup];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersStudent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK_UsersStudent];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersGroup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GroupSet] DROP CONSTRAINT [FK_UsersGroup];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Student]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Student];
GO
IF OBJECT_ID(N'[dbo].[GroupSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GroupSet];
GO
IF OBJECT_ID(N'[dbo].[groupAssignSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[groupAssignSet];
GO
IF OBJECT_ID(N'[dbo].[UsersSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UsersSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Student'
CREATE TABLE [dbo].[Student] (
    [Student_id] int  NOT NULL,
    [Student_Name] varchar(50)  NOT NULL,
    [Email] varchar(50)  NOT NULL,
    [Student_surname] nvarchar(max)  NOT NULL,
    [aanhef] nvarchar(max)  NOT NULL,
    [UsersId] int  NOT NULL
);
GO

-- Creating table 'GroupSet'
CREATE TABLE [dbo].[GroupSet] (
    [groupId] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [UsersId] int  NOT NULL
);
GO

-- Creating table 'groupAssignSet'
CREATE TABLE [dbo].[groupAssignSet] (
    [StudentStudent_id] int  NOT NULL,
    [Group_groupId] int  NOT NULL
);
GO

-- Creating table 'UsersSet'
CREATE TABLE [dbo].[UsersSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [username] nvarchar(max)  NOT NULL,
    [password] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Student_id] in table 'Student'
ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [PK_Student]
    PRIMARY KEY CLUSTERED ([Student_id] ASC);
GO

-- Creating primary key on [groupId] in table 'GroupSet'
ALTER TABLE [dbo].[GroupSet]
ADD CONSTRAINT [PK_GroupSet]
    PRIMARY KEY CLUSTERED ([groupId] ASC);
GO

-- Creating primary key on [StudentStudent_id], [Group_groupId] in table 'groupAssignSet'
ALTER TABLE [dbo].[groupAssignSet]
ADD CONSTRAINT [PK_groupAssignSet]
    PRIMARY KEY NONCLUSTERED ([StudentStudent_id], [Group_groupId] ASC);
GO

-- Creating primary key on [Id] in table 'UsersSet'
ALTER TABLE [dbo].[UsersSet]
ADD CONSTRAINT [PK_UsersSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [StudentStudent_id] in table 'groupAssignSet'
ALTER TABLE [dbo].[groupAssignSet]
ADD CONSTRAINT [FK_groupAssignStudent]
    FOREIGN KEY ([StudentStudent_id])
    REFERENCES [dbo].[Student]
        ([Student_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Group_groupId] in table 'groupAssignSet'
ALTER TABLE [dbo].[groupAssignSet]
ADD CONSTRAINT [FK_groupAssignGroup]
    FOREIGN KEY ([Group_groupId])
    REFERENCES [dbo].[GroupSet]
        ([groupId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_groupAssignGroup'
CREATE INDEX [IX_FK_groupAssignGroup]
ON [dbo].[groupAssignSet]
    ([Group_groupId]);
GO

-- Creating foreign key on [UsersId] in table 'Student'
ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [FK_UsersStudent]
    FOREIGN KEY ([UsersId])
    REFERENCES [dbo].[UsersSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersStudent'
CREATE INDEX [IX_FK_UsersStudent]
ON [dbo].[Student]
    ([UsersId]);
GO

-- Creating foreign key on [UsersId] in table 'GroupSet'
ALTER TABLE [dbo].[GroupSet]
ADD CONSTRAINT [FK_UsersGroup]
    FOREIGN KEY ([UsersId])
    REFERENCES [dbo].[UsersSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersGroup'
CREATE INDEX [IX_FK_UsersGroup]
ON [dbo].[GroupSet]
    ([UsersId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------