CREATE PROCEDURE InsertIncomingFile
	@id uniqueidentifier
AS
BEGIN
	INSERT INTO [dbo].[IncomingFile](Id)
	VALUES(@id)
END