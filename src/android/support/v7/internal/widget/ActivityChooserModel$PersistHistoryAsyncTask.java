package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlSerializer;

final class ActivityChooserModel$PersistHistoryAsyncTask
  extends AsyncTask<Object, Void, Void>
{
  private ActivityChooserModel$PersistHistoryAsyncTask(ActivityChooserModel paramActivityChooserModel) {}
  
  public Void doInBackground(Object... paramVarArgs)
  {
    int i = 0;
    List localList = (List)paramVarArgs[0];
    Object localObject2 = (String)paramVarArgs[1];
    for (;;)
    {
      try
      {
        paramVarArgs = ActivityChooserModel.access$200(this$0).openFileOutput((String)localObject2, 0);
        localObject2 = Xml.newSerializer();
        int j;
        ActivityChooserModel.HistoricalRecord localHistoricalRecord;
        ((XmlSerializer)localObject2).endTag(null, "historical-records");
      }
      catch (FileNotFoundException paramVarArgs)
      {
        try
        {
          ((XmlSerializer)localObject2).setOutput(paramVarArgs, null);
          ((XmlSerializer)localObject2).startDocument("UTF-8", Boolean.valueOf(true));
          ((XmlSerializer)localObject2).startTag(null, "historical-records");
          j = localList.size();
          if (i >= j) {
            break label210;
          }
          localHistoricalRecord = (ActivityChooserModel.HistoricalRecord)localList.remove(0);
          ((XmlSerializer)localObject2).startTag(null, "historical-record");
          ((XmlSerializer)localObject2).attribute(null, "activity", activity.flattenToString());
          ((XmlSerializer)localObject2).attribute(null, "time", String.valueOf(time));
          ((XmlSerializer)localObject2).attribute(null, "weight", String.valueOf(weight));
          ((XmlSerializer)localObject2).endTag(null, "historical-record");
          i += 1;
          continue;
          paramVarArgs = paramVarArgs;
          ActivityChooserModel.access$300();
          new StringBuilder().append("Error writing historical recrod file: ").append((String)localObject2).toString();
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          ActivityChooserModel.access$300();
          new StringBuilder().append("Error writing historical recrod file: ").append(ActivityChooserModel.access$400(this$0)).toString();
          ActivityChooserModel.access$502(this$0, true);
          if (paramVarArgs == null) {
            continue;
          }
          try
          {
            paramVarArgs.close();
            return null;
          }
          catch (IOException paramVarArgs)
          {
            return null;
          }
        }
        catch (IllegalStateException localIllegalStateException)
        {
          ActivityChooserModel.access$300();
          new StringBuilder().append("Error writing historical recrod file: ").append(ActivityChooserModel.access$400(this$0)).toString();
          ActivityChooserModel.access$502(this$0, true);
          if (paramVarArgs == null) {
            continue;
          }
          try
          {
            paramVarArgs.close();
            return null;
          }
          catch (IOException paramVarArgs)
          {
            return null;
          }
        }
        catch (IOException localIOException)
        {
          ActivityChooserModel.access$300();
          new StringBuilder().append("Error writing historical recrod file: ").append(ActivityChooserModel.access$400(this$0)).toString();
          ActivityChooserModel.access$502(this$0, true);
          if (paramVarArgs == null) {
            continue;
          }
          try
          {
            paramVarArgs.close();
            return null;
          }
          catch (IOException paramVarArgs)
          {
            return null;
          }
        }
        finally
        {
          ActivityChooserModel.access$502(this$0, true);
          if (paramVarArgs == null) {
            break label431;
          }
        }
        return null;
      }
      label210:
      ((XmlSerializer)localObject2).endDocument();
      ActivityChooserModel.access$502(this$0, true);
      if (paramVarArgs != null) {
        try
        {
          paramVarArgs.close();
          return null;
        }
        catch (IOException paramVarArgs)
        {
          return null;
        }
      }
    }
    try
    {
      paramVarArgs.close();
      label431:
      throw ((Throwable)localObject1);
    }
    catch (IOException paramVarArgs)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserModel.PersistHistoryAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */