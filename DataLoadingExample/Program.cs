using DataLoadingExample.Models;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Insight.Database;
using System.Data.SqlClient;

namespace DataLoadingExample
{
	public static class Program
	{
		public static async Task Main(string[] args)
		{
			await CreateDataAsync();
 			Console.WriteLine("Finished");
		}

		private static async Task CreateDataAsync()
		{
			var connection = new SqlConnection("Server=.;Database=Example;Trusted_Connection=True;");

			var incomingFile = new IncomingFile();
			var incomingFileEvents = new List<IncomingFileEvent>();
			for (int i = 1; i <= 1000; i++)
			{
				incomingFileEvents.Add(new IncomingFileEvent { IncomingFileId = incomingFile.Id });
			}

            using var c = await connection.OpenWithTransactionAsync();
            c.Execute("InsertIncomingFile", incomingFile);
            c.Execute("InsertIncomingFileEvents", incomingFileEvents);
            c.Commit();
        }
	}
}
