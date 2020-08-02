CREATE TYPE [dbo].[IncomingFileType] AS TABLE (
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [ConcurrencyVersion] ROWVERSION       NOT NULL);

