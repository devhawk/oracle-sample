using System;
using Neo.SmartContract.Framework;
using Neo.SmartContract.Framework.Services.Neo;

namespace DevHawk.Neo.Samples
{
    public class OracleSample : SmartContract
    {
        public static void MakeOracleCall()
        {
            Runtime.Log("MakeOracleCall");
            Oracle.Request("fake:somepath.json", "",  "OracleCallback", null, 0_10000000);
        }

        public static void OracleCallback(string url, object userData, int code, byte[] result)
        {
            Runtime.Log("OracleCallback");
        }
    }
}
