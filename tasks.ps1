dotnet tool restore
dotnet build ./contract/OracleSample.csproj

dotnet nxp3 reset -f
dotnet nxp3 oracle enable
dotnet nxp3 contract deploy ./contract/bin/Debug/netstandard2.1/OracleSample.nef genesis
dotnet nxp3 contract invoke ./make-oracle-call.neo-invoke.json genesis
dotnet nxp3 oracle response fake:somepath.json ./response.json