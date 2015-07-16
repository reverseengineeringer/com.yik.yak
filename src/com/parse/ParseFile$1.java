package com.parse;

import M;
import N;
import java.io.File;

class ParseFile$1
  implements M<Void, Void>
{
  ParseFile$1(ParseFile paramParseFile, boolean paramBoolean) {}
  
  public Void then(N<Void> paramN)
  {
    if (((val$pinned) && (this$0.isPinned())) || ((!val$pinned) && (!this$0.isPinned()))) {}
    File localFile;
    do
    {
      return null;
      if (val$pinned) {
        localFile = this$0.getCacheFile();
      }
      for (paramN = this$0.getFilesFile(); paramN == null; paramN = this$0.getCacheFile())
      {
        throw new IllegalStateException("Unable to pin file before saving");
        localFile = this$0.getFilesFile();
      }
      if (paramN.exists()) {
        ParseFileUtils.deleteQuietly(paramN);
      }
      if ((!val$pinned) || (this$0.data == null)) {
        break;
      }
      ParseFileUtils.writeByteArrayToFile(paramN, this$0.data);
    } while (!localFile.exists());
    ParseFileUtils.deleteQuietly(localFile);
    return null;
    if ((localFile == null) || (!localFile.exists())) {
      throw new IllegalStateException("Unable to pin file before retrieving");
    }
    ParseFileUtils.moveFile(localFile, paramN);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseFile.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */