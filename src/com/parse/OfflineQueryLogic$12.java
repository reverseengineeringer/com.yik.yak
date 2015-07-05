package com.parse;

import R;

class OfflineQueryLogic$12
  implements OfflineQueryLogic.ConstraintMatcher<T>
{
  OfflineQueryLogic$12(OfflineQueryLogic paramOfflineQueryLogic, ParseQuery.RelationConstraint paramRelationConstraint) {}
  
  public R<Boolean> matchesAsync(T paramT, ParseSQLiteDatabase paramParseSQLiteDatabase)
  {
    return R.a(Boolean.valueOf(val$relation.getRelation().hasKnownObject(paramT)));
  }
}

/* Location:
 * Qualified Name:     com.parse.OfflineQueryLogic.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */