package com.parse;

import java.lang.annotation.Annotation;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Inherited
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
public @interface ParseClassName
{
  String value();
}

/* Location:
 * Qualified Name:     com.parse.ParseClassName
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */