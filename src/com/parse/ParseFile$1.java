package com.parse;

import Q;
import R;
import java.io.File;

class ParseFile$1
  implements Q<Void, Void>
{
  ParseFile$1(ParseFile paramParseFile, boolean paramBoolean) {}
  
  public Void then(R<Void> paramR)
  {
    if (((val$pinned) && (this$0.isPinned())) || ((!val$pinned) && (!this$0.isPinned()))) {}
    File localFile;
    do
    {
      return null;
      if (val$pinned) {
        localFile = this$0.getCacheFile();
      }
      for (paramR = this$0.getFilesFile(); paramR == null; paramR = this$0.getCacheFile())
      {
        throw new IllegalStateException("Unable to pin file before saving");
        localFile = this$0.getFilesFile();
      }
      if (paramR.exists()) {
        ParseFileUtils.deleteQuietly(paramR);
      }
      if ((!val$pinned) || (this$0.data == null)) {
        break;
      }
      ParseFileUtils.writeByteArrayToFile(paramR, this$0.data);
    } while (!localFile.exists());
    ParseFileUtils.deleteQuietly(localFile);
    return null;
    if ((localFile == null) || (!localFile.exists())) {
      throw new IllegalStateException("Unable to pin file before retrieving");
    }
    ParseFileUtils.moveFile(localFile, paramR);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */