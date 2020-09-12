using System;
using System.Net;
namespace SampleListener
{
	public static class Program
	{
		public static void Main(String[] args)
		{
			Socket.Init();
			Socket listener = new System.Net.Socket();
			int32 port = 9092;

			if (listener.Listen(port) case .Ok)
			{
				Console.WriteLine("Started server at port {0}", port);

				while (true)
				{
					Socket client = scope Socket();

					if (client.AcceptFrom(listener) case .Ok)
					{
						void* buffer = Internal.Malloc(4096);

						if (client.Recv(buffer, 4096) case .Ok(let readSize))
						{
							if (readSize > 0)
							{
								client.Send(buffer, readSize);
								String message = scope String((char8*)buffer, readSize);
								Console.WriteLine(message);
							}
						}
						else
						{
							Console.WriteLine("Failed to receive data from socket");
						}
						Internal.Free(buffer);
					}
				}
			}
			else
			{
				Console.WriteLine("Cannot start server at port {0}", port);
			}


			Console.Read();
		}
	}
}
