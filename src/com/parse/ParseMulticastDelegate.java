package com.parse;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class ParseMulticastDelegate<T>
{
  private final List<ParseCallback<T>> callbacks = new LinkedList();
  
  public void clear()
  {
    callbacks.clear();
  }
  
  public void invoke(T paramT, ParseException paramParseException)
  {
    Iterator localIterator = new ArrayList(callbacks).iterator();
    while (localIterator.hasNext()) {
      ((ParseCallback)localIterator.next()).internalDone(paramT, paramParseException);
    }
  }
  
  public void subscribe(ParseCallback<T> paramParseCallback)
  {
    callbacks.add(paramParseCallback);
  }
  
  public void unsubscribe(ParseCallback<T> paramParseCallback)
  {
    callbacks.remove(paramParseCallback);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseMulticastDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */