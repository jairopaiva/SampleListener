# SampleListener
A sample echo server in BeefLang

A program that exemplifies the use of the System.Net.Socket structure in BeefLang.

- It binds the listener to localhost on given port (9092 in the example);
- Waits until a client connection is accepted;
- Then, it receives the sended data by a client, print in console, then, echo back;

## JMeter result with equivalent programs in different languages:

### Params:
- Address: 127.0.0.1
- Port: 9092
- Threads: 2
- Send for: 20 seconds
- Text to send: Hello

| Lang and implementation | Samples | Error(%) | Throughput(Req/s) |
| :-: | :-: | :-: | :-: |
| Java with ServerSocket | 31085 | 0.0 | 1554 |
| C# with TcpListener | 20681 | 0.0 | 1034 |
| C# with HPSocket.Net | 10438 | 0.0 | 522 |
| BeefLang Socket | 16494 | 2.7 | 825 |
