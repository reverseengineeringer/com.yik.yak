package com.parse;

import java.io.File;
import java.io.FilenameFilter;

final class Parse$3
  implements FilenameFilter
{
  Parse$3(String paramString) {}
  
  public boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(val$suffix);
  }
}

/* Location:
 * Qualified Name:     com.parse.Parse.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */