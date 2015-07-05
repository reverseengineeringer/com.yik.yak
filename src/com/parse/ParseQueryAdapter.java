package com.parse;

import P;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public class ParseQueryAdapter<T extends ParseObject>
  extends BaseAdapter
{
  private static final int VIEW_TYPE_ITEM = 0;
  private static final int VIEW_TYPE_NEXT_PAGE = 1;
  private boolean autoload = true;
  private Context context;
  private int currentPage = 0;
  private WeakHashMap<DataSetObserver, Void> dataSetObservers = new WeakHashMap();
  private boolean hasNextPage = true;
  private String imageKey;
  private WeakHashMap<ParseImageView, Void> imageViewSet = new WeakHashMap();
  private Integer itemResourceId;
  private List<List<T>> objectPages = new ArrayList();
  private List<T> objects = new ArrayList();
  private int objectsPerPage = 25;
  private List<ParseQueryAdapter.OnQueryLoadListener<T>> onQueryLoadListeners = new ArrayList();
  private boolean paginationEnabled = true;
  private Drawable placeholder;
  private ParseQueryAdapter.QueryFactory<T> queryFactory;
  private String textKey;
  
  public ParseQueryAdapter(Context paramContext, ParseQueryAdapter.QueryFactory<T> paramQueryFactory)
  {
    this(paramContext, paramQueryFactory, null);
  }
  
  public ParseQueryAdapter(Context paramContext, ParseQueryAdapter.QueryFactory<T> paramQueryFactory, int paramInt)
  {
    this(paramContext, paramQueryFactory, Integer.valueOf(paramInt));
  }
  
  private ParseQueryAdapter(Context paramContext, ParseQueryAdapter.QueryFactory<T> paramQueryFactory, Integer paramInteger)
  {
    context = paramContext;
    queryFactory = paramQueryFactory;
    itemResourceId = paramInteger;
  }
  
  public ParseQueryAdapter(Context paramContext, Class<? extends ParseObject> paramClass)
  {
    this(paramContext, ParseObject.getClassName(paramClass));
  }
  
  public ParseQueryAdapter(Context paramContext, Class<? extends ParseObject> paramClass, int paramInt)
  {
    this(paramContext, ParseObject.getClassName(paramClass), paramInt);
  }
  
  public ParseQueryAdapter(Context paramContext, String paramString)
  {
    this(paramContext, new ParseQueryAdapter.1(paramString));
    if (paramString == null) {
      throw new RuntimeException("You need to specify a className for the ParseQueryAdapter");
    }
  }
  
  public ParseQueryAdapter(Context paramContext, String paramString, int paramInt)
  {
    this(paramContext, new ParseQueryAdapter.2(paramString), paramInt);
    if (paramString == null) {
      throw new RuntimeException("You need to specify a className for the ParseQueryAdapter");
    }
  }
  
  private View getDefaultView(Context paramContext)
  {
    if (itemResourceId != null) {
      return View.inflate(paramContext, itemResourceId.intValue(), null);
    }
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setPadding(8, 4, 8, 4);
    ParseImageView localParseImageView = new ParseImageView(paramContext);
    localParseImageView.setId(16908294);
    localParseImageView.setLayoutParams(new LinearLayout.LayoutParams(50, 50));
    localLinearLayout.addView(localParseImageView);
    paramContext = new TextView(paramContext);
    paramContext.setId(16908308);
    paramContext.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    paramContext.setPadding(8, 0, 0, 0);
    localLinearLayout.addView(paramContext);
    return localLinearLayout;
  }
  
  private int getPaginationCellRow()
  {
    return objects.size();
  }
  
  private void loadObjects(int paramInt, boolean paramBoolean)
  {
    ParseQuery localParseQuery = queryFactory.create();
    if ((objectsPerPage > 0) && (paginationEnabled)) {
      setPageOnQuery(paramInt, localParseQuery);
    }
    notifyOnLoadingListeners();
    if (paramInt >= objectPages.size()) {
      objectPages.add(paramInt, new ArrayList());
    }
    localParseQuery.findInBackground(new ParseQueryAdapter.3(this, localParseQuery, paramBoolean, new P(Boolean.valueOf(true)), paramInt));
  }
  
  private void notifyOnLoadedListeners(List<T> paramList, Exception paramException)
  {
    Iterator localIterator = onQueryLoadListeners.iterator();
    while (localIterator.hasNext()) {
      ((ParseQueryAdapter.OnQueryLoadListener)localIterator.next()).onLoaded(paramList, paramException);
    }
  }
  
  private void notifyOnLoadingListeners()
  {
    Iterator localIterator = onQueryLoadListeners.iterator();
    while (localIterator.hasNext()) {
      ((ParseQueryAdapter.OnQueryLoadListener)localIterator.next()).onLoading();
    }
  }
  
  private boolean shouldShowPaginationCell()
  {
    return (paginationEnabled) && (objects.size() > 0) && (hasNextPage);
  }
  
  private void syncObjectsWithPages()
  {
    objects.clear();
    Iterator localIterator = objectPages.iterator();
    while (localIterator.hasNext())
    {
      List localList = (List)localIterator.next();
      objects.addAll(localList);
    }
  }
  
  public void addOnQueryLoadListener(ParseQueryAdapter.OnQueryLoadListener<T> paramOnQueryLoadListener)
  {
    onQueryLoadListeners.add(paramOnQueryLoadListener);
  }
  
  public void clear()
  {
    objectPages.clear();
    syncObjectsWithPages();
    notifyDataSetChanged();
    currentPage = 0;
  }
  
  public Context getContext()
  {
    return context;
  }
  
  public int getCount()
  {
    int j = objects.size();
    int i = j;
    if (shouldShowPaginationCell()) {
      i = j + 1;
    }
    return i;
  }
  
  public T getItem(int paramInt)
  {
    if (paramInt == getPaginationCellRow()) {
      return null;
    }
    return (ParseObject)objects.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getItemView(T paramT, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = getDefaultView(context);
    }
    for (;;)
    {
      try
      {
        paramView = (TextView)paramViewGroup.findViewById(16908308);
        if (paramView != null)
        {
          if (textKey == null) {
            paramView.setText(paramT.getObjectId());
          }
        }
        else if (imageKey == null) {
          return paramViewGroup;
        }
        if (paramT.get(textKey) == null) {
          break label118;
        }
      }
      catch (ClassCastException paramT)
      {
        try
        {
          paramView = (ParseImageView)paramViewGroup.findViewById(16908294);
          if (paramView != null) {
            break;
          }
          throw new IllegalStateException("Your object views must have a ParseImageView whose id attribute is 'android.R.id.icon' if an imageKey is specified");
        }
        catch (ClassCastException paramT)
        {
          throw new IllegalStateException("Your object views must have a ParseImageView whose id attribute is 'android.R.id.icon'", paramT);
        }
        paramT = paramT;
        throw new IllegalStateException("Your object views must have a TextView whose id attribute is 'android.R.id.text1'", paramT);
      }
      paramView.setText(paramT.get(textKey).toString());
      continue;
      label118:
      paramView.setText(null);
    }
    if (!imageViewSet.containsKey(paramView)) {
      imageViewSet.put(paramView, null);
    }
    paramView.setPlaceholder(placeholder);
    paramView.setParseFile((ParseFile)paramT.get(imageKey));
    paramView.loadInBackground();
    return paramViewGroup;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt == getPaginationCellRow()) {
      return 1;
    }
    return 0;
  }
  
  public View getNextPageView(View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = getDefaultView(context);
    }
    ((TextView)paramViewGroup.findViewById(16908308)).setText("Load more...");
    return paramViewGroup;
  }
  
  public int getObjectsPerPage()
  {
    return objectsPerPage;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (getItemViewType(paramInt) == 1)
    {
      paramView = getNextPageView(paramView, paramViewGroup);
      paramView.setOnClickListener(new ParseQueryAdapter.4(this));
      return paramView;
    }
    return getItemView(getItem(paramInt), paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  public void loadNextPage()
  {
    loadObjects(currentPage + 1, false);
  }
  
  public void loadObjects()
  {
    loadObjects(0, true);
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    super.registerDataSetObserver(paramDataSetObserver);
    dataSetObservers.put(paramDataSetObserver, null);
    if (autoload) {
      loadObjects();
    }
  }
  
  public void removeOnQueryLoadListener(ParseQueryAdapter.OnQueryLoadListener<T> paramOnQueryLoadListener)
  {
    onQueryLoadListeners.remove(paramOnQueryLoadListener);
  }
  
  public void setAutoload(boolean paramBoolean)
  {
    if (autoload == paramBoolean) {}
    do
    {
      return;
      autoload = paramBoolean;
    } while ((!autoload) || (dataSetObservers.isEmpty()) || (!objects.isEmpty()));
    loadObjects();
  }
  
  public void setImageKey(String paramString)
  {
    imageKey = paramString;
  }
  
  public void setObjectsPerPage(int paramInt)
  {
    objectsPerPage = paramInt;
  }
  
  protected void setPageOnQuery(int paramInt, ParseQuery<T> paramParseQuery)
  {
    paramParseQuery.setLimit(objectsPerPage + 1);
    paramParseQuery.setSkip(objectsPerPage * paramInt);
  }
  
  public void setPaginationEnabled(boolean paramBoolean)
  {
    paginationEnabled = paramBoolean;
  }
  
  public void setPlaceholder(Drawable paramDrawable)
  {
    if (placeholder == paramDrawable) {}
    for (;;)
    {
      return;
      placeholder = paramDrawable;
      paramDrawable = imageViewSet.keySet().iterator();
      while (paramDrawable.hasNext())
      {
        ParseImageView localParseImageView = (ParseImageView)paramDrawable.next();
        if (localParseImageView != null) {
          localParseImageView.setPlaceholder(placeholder);
        }
      }
    }
  }
  
  public void setTextKey(String paramString)
  {
    textKey = paramString;
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    super.unregisterDataSetObserver(paramDataSetObserver);
    dataSetObservers.remove(paramDataSetObserver);
  }
}

/* Location:
 * Qualified Name:     com.parse.ParseQueryAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */