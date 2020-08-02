using System;

namespace DataLoadingExample.Models
{
    public class IncomingFileEvent
	{
		public Guid Id { get; set; } = Guid.NewGuid();
		public Guid IncomingFileId { get; set; }
	}
}
