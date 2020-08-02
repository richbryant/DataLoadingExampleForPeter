CREATE TABLE [dbo].[IncomingFile] (
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [ConcurrencyVersion] ROWVERSION       NOT NULL,
    CONSTRAINT [PK_IncomingFile] PRIMARY KEY CLUSTERED ([Id] ASC)
);

