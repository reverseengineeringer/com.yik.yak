package com.parse;

import N;

class OfflineQueryLogic$12
  implements OfflineQueryLogic.ConstraintMatcher<T>
{
  OfflineQueryLogic$12(OfflineQueryLogic paramOfflineQueryLogic, ParseQuery.RelationConstraint paramRelationConstraint) {}
  
  public N<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    return N.a(Boolean.valueOf(val$relation.getRelation().hasKnownObject(paramT)));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */