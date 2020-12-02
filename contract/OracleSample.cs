using System;
using Neo;
using Neo.SmartContract.Framework;
using Neo.SmartContract.Framework.Services.Neo;

namespace DevHawk.Neo.Samples
{
    public class OracleSample : SmartContract
    {
        public static void MakeOracleCall()
        {
            Runtime.Log("MakeOracleCall");
            Oracle.Request("fake:somepath.json", "Actors[0]", "oracleCallback", null, 0_10000000);
        }

        public static void OracleCallback(string url, object userData, int code, string result)
        {
            Runtime.Log("OracleCallback");
            Runtime.Log(result);
        }
    }
}
