CREATE TYPE [dbo].[IncomingFileEventType] AS TABLE (
    [Id]             UNIQUEIDENTIFIER NOT NULL,
    [IncomingFileId] UNIQUEIDENTIFIER NOT NULL);

