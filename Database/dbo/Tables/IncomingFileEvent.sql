CREATE TABLE [dbo].[IncomingFileEvent] (
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [ConcurrencyVersion] ROWVERSION       NOT NULL,
    [IncomingFileId]     UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_IncomingFileEvent] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_IncomingFileEvent_IncomingFileId] FOREIGN KEY ([IncomingFileId]) REFERENCES [dbo].[IncomingFile] ([Id])
);

