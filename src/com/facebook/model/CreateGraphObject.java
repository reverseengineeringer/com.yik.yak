package com.facebook.model;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
public @interface CreateGraphObject
{
  String value();
}

/* Location:
 * Qualified Name:     com.facebook.model.CreateGraphObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */