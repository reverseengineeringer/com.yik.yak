package com.parse.signpost.signature;

import com.parse.signpost.http.HttpParameters;
import com.parse.signpost.http.HttpRequest;
import java.io.Serializable;

public abstract interface SigningStrategy
  extends Serializable
{
  public abstract String writeSignature(String paramString, HttpRequest paramHttpRequest, HttpParameters paramHttpParameters);
}

/* Location:
 * Qualified Name:     com.parse.signpost.signature.SigningStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */