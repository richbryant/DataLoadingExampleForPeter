using System;

namespace DataLoadingExample.Models
{
    public class IncomingFile
	{
		public Guid Id { get; set; } = Guid.NewGuid();
		public string ConcurrencyVersion { get; } = string.Empty;
	}
}
