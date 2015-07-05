package com.parse;

import java.util.Comparator;
import java.util.Date;
import org.json.JSONObject;

class OfflineQueryLogic$16
  implements Comparator<T>
{
  OfflineQueryLogic$16(OfflineQueryLogic paramOfflineQueryLogic, String paramString, ParseGeoPoint paramParseGeoPoint, String[] paramArrayOfString) {}
  
  public int compare(T paramT1, T paramT2)
  {
    Object localObject1;
    Object localObject2;
    if (val$nearSphereKey != null)
    {
      try
      {
        localObject1 = (ParseGeoPoint)OfflineQueryLogic.access$200(this$0, paramT1, val$nearSphereKey);
        localObject2 = (ParseGeoPoint)OfflineQueryLogic.access$200(this$0, paramT2, val$nearSphereKey);
        double d1 = ((ParseGeoPoint)localObject1).distanceInRadiansTo(val$nearSphereValue);
        double d2 = ((ParseGeoPoint)localObject2).distanceInRadiansTo(val$nearSphereValue);
        if (d1 == d2) {
          break label96;
        }
        if (d1 - d2 > 0.0D)
        {
          j = 1;
          return j;
        }
      }
      catch (ParseException paramT1)
      {
        throw new RuntimeException(paramT1);
      }
      return -1;
    }
    label96:
    int j = 0;
    label99:
    if (j < val$keys.length)
    {
      localObject1 = val$keys[j];
      if (!((String)localObject1).startsWith("-")) {
        break label443;
      }
      localObject1 = ((String)localObject1).substring(1);
    }
    label242:
    label248:
    label410:
    label432:
    label443:
    for (int k = 1;; k = 0)
    {
      for (;;)
      {
        Object localObject3;
        try
        {
          localObject2 = OfflineQueryLogic.access$200(this$0, paramT1, (String)localObject1);
          localObject3 = OfflineQueryLogic.access$200(this$0, paramT2, (String)localObject1);
          if ((localObject2 == JSONObject.NULL) || (localObject2 == null))
          {
            i = 1;
            if ((localObject3 != JSONObject.NULL) && (localObject3 != null)) {
              break label242;
            }
            m = 1;
            if ((i != 0) || (m == 0)) {
              break label248;
            }
            i = 1;
            if (i == 0) {
              break label432;
            }
            j = i;
            if (k == 0) {
              break;
            }
            return -i;
          }
        }
        catch (ParseException paramT1)
        {
          throw new RuntimeException(paramT1);
        }
        int i = 0;
        continue;
        int m = 0;
        continue;
        if ((i != 0) && (m == 0))
        {
          i = -1;
        }
        else if ((i != 0) && (m != 0))
        {
          i = 0;
        }
        else if ((localObject2 instanceof Date))
        {
          i = ((Date)localObject2).compareTo((Date)localObject3);
        }
        else if ((localObject2 instanceof String))
        {
          i = ((String)localObject2).compareTo((String)localObject3);
        }
        else if ((localObject2 instanceof Integer))
        {
          i = ((Integer)localObject2).compareTo((Integer)localObject3);
        }
        else if ((localObject2 instanceof Float))
        {
          i = ((Float)localObject2).compareTo((Float)localObject3);
        }
        else
        {
          if (!(localObject2 instanceof Double)) {
            break label410;
          }
          i = ((Double)localObject2).compareTo((Double)localObject3);
        }
      }
      throw new IllegalArgumentException(String.format("Unable to sort by key %s.", new Object[] { localObject1 }));
      j += 1;
      break label99;
      return 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */