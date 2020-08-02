CREATE PROCEDURE InsertIncomingFileEvents
	@events [dbo].[IncomingFileEventType] READONLY
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[IncomingFileEvent]([Id],[IncomingFileId])
	SELECT Id, IncomingFileId FROM @events
    
END