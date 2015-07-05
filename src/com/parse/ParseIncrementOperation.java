package com.parse;

import org.json.JSONObject;

class ParseIncrementOperation
  implements ParseFieldOperation
{
  private Number amount;
  
  public ParseIncrementOperation(Number paramNumber)
  {
    amount = paramNumber;
  }
  
  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    if (paramObject == null) {
      return amount;
    }
    if ((paramObject instanceof Number)) {
      return Parse.addNumbers((Number)paramObject, amount);
    }
    throw new IllegalArgumentException("You cannot increment a non-number.");
  }
  
  public JSONObject encode(ParseObjectEncodingStrategy paramParseObjectEncodingStrategy)
  {
    paramParseObjectEncodingStrategy = new JSONObject();
    paramParseObjectEncodingStrategy.put("__op", "Increment");
    paramParseObjectEncodingStrategy.put("amount", amount);
    return paramParseObjectEncodingStrategy;
  }
  
  public ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation)
  {
    if (paramParseFieldOperation == null) {
      return this;
    }
    if ((paramParseFieldOperation instanceof ParseDeleteOperation)) {
      return new ParseSetOperation(amount);
    }
    if ((paramParseFieldOperation instanceof ParseSetOperation))
    {
      paramParseFieldOperation = ((ParseSetOperation)paramParseFieldOperation).getValue();
      if ((paramParseFieldOperation instanceof Number)) {
        return new ParseSetOperation(Parse.addNumbers((Number)paramParseFieldOperation, amount));
      }
      throw new IllegalArgumentException("You cannot increment a non-number.");
    }
    if ((paramParseFieldOperation instanceof ParseIncrementOperation)) {
      return new ParseIncrementOperation(Parse.addNumbers(amount, amount));
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseIncrementOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */