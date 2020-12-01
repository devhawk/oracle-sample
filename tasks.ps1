dotnet tool restore
dotnet build ./contract/OracleSample.csproj
dotnet build C:\Users\harry\Source\neo\seattle\express\src\nxp3\nxp3.csproj
dotnet run -p C:\Users\harry\Source\neo\seattle\express\src\nxp3\nxp3.csproj --no-build -- reset -f
dotnet run -p C:\Users\harry\Source\neo\seattle\express\src\nxp3\nxp3.csproj --no-build -- oracle enable
dotnet run -p C:\Users\harry\Source\neo\seattle\express\src\nxp3\nxp3.csproj --no-build -- contract deploy ./contract/bin/Debug/netstandard2.1/OracleSample.nef genesis
dotnet run -p C:\Users\harry\Source\neo\seattle\express\src\nxp3\nxp3.csproj --no-build -- contract invoke ./make-oracle-call.neo-invoke.json genesis
dotnet run -p C:\Users\harry\Source\neo\seattle\express\src\nxp3\nxp3.csproj --no-build -- oracle response fake:somepath.json ./response.json