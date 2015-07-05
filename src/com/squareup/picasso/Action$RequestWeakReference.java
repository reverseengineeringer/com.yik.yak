package com.squareup.picasso;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

class Action$RequestWeakReference<T>
  extends WeakReference<T>
{
  final Action action;
  
  public Action$RequestWeakReference(Action paramAction, T paramT, ReferenceQueue<? super T> paramReferenceQueue)
  {
    super(paramT, paramReferenceQueue);
    action = paramAction;
  }
}

/* Location:
 * Qualified Name:     com.squareup.picasso.Action.RequestWeakReference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */