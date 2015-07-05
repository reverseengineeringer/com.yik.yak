package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;

public class AlertController$AlertParams
{
  public ListAdapter mAdapter;
  public boolean mCancelable;
  public int mCheckedItem = -1;
  public boolean[] mCheckedItems;
  public final Context mContext;
  public Cursor mCursor;
  public View mCustomTitleView;
  public boolean mForceInverseBackground;
  public Drawable mIcon;
  public int mIconAttrId = 0;
  public int mIconId = 0;
  public final LayoutInflater mInflater;
  public String mIsCheckedColumn;
  public boolean mIsMultiChoice;
  public boolean mIsSingleChoice;
  public CharSequence[] mItems;
  public String mLabelColumn;
  public CharSequence mMessage;
  public DialogInterface.OnClickListener mNegativeButtonListener;
  public CharSequence mNegativeButtonText;
  public DialogInterface.OnClickListener mNeutralButtonListener;
  public CharSequence mNeutralButtonText;
  public DialogInterface.OnCancelListener mOnCancelListener;
  public DialogInterface.OnMultiChoiceClickListener mOnCheckboxClickListener;
  public DialogInterface.OnClickListener mOnClickListener;
  public DialogInterface.OnDismissListener mOnDismissListener;
  public AdapterView.OnItemSelectedListener mOnItemSelectedListener;
  public DialogInterface.OnKeyListener mOnKeyListener;
  public AlertController.AlertParams.OnPrepareListViewListener mOnPrepareListViewListener;
  public DialogInterface.OnClickListener mPositiveButtonListener;
  public CharSequence mPositiveButtonText;
  public boolean mRecycleOnMeasure = true;
  public CharSequence mTitle;
  public View mView;
  public int mViewLayoutResId;
  public int mViewSpacingBottom;
  public int mViewSpacingLeft;
  public int mViewSpacingRight;
  public boolean mViewSpacingSpecified = false;
  public int mViewSpacingTop;
  
  public AlertController$AlertParams(Context paramContext)
  {
    mContext = paramContext;
    mCancelable = true;
    mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  private void createListView(AlertController paramAlertController)
  {
    ListView localListView = (ListView)mInflater.inflate(AlertController.access$800(paramAlertController), null);
    Object localObject;
    if (mIsMultiChoice) {
      if (mCursor == null)
      {
        localObject = new AlertController.AlertParams.1(this, mContext, AlertController.access$900(paramAlertController), 16908308, mItems, localListView);
        if (mOnPrepareListViewListener != null) {
          mOnPrepareListViewListener.onPrepareListView(localListView);
        }
        AlertController.access$1202(paramAlertController, (ListAdapter)localObject);
        AlertController.access$1302(paramAlertController, mCheckedItem);
        if (mOnClickListener == null) {
          break label274;
        }
        localListView.setOnItemClickListener(new AlertController.AlertParams.3(this, paramAlertController));
        label110:
        if (mOnItemSelectedListener != null) {
          localListView.setOnItemSelectedListener(mOnItemSelectedListener);
        }
        if (!mIsSingleChoice) {
          break label300;
        }
        localListView.setChoiceMode(1);
      }
    }
    for (;;)
    {
      AlertController.access$1402(paramAlertController, localListView);
      return;
      localObject = new AlertController.AlertParams.2(this, mContext, mCursor, false, localListView, paramAlertController);
      break;
      int i;
      if (mIsSingleChoice) {
        i = AlertController.access$1000(paramAlertController);
      }
      for (;;)
      {
        if (mCursor == null)
        {
          if (mAdapter != null)
          {
            localObject = mAdapter;
            break;
            i = AlertController.access$1100(paramAlertController);
            continue;
          }
          localObject = new AlertController.CheckedItemAdapter(mContext, i, 16908308, mItems);
          break;
        }
      }
      localObject = new SimpleCursorAdapter(mContext, i, mCursor, new String[] { mLabelColumn }, new int[] { 16908308 });
      break;
      label274:
      if (mOnCheckboxClickListener == null) {
        break label110;
      }
      localListView.setOnItemClickListener(new AlertController.AlertParams.4(this, localListView, paramAlertController));
      break label110;
      label300:
      if (mIsMultiChoice) {
        localListView.setChoiceMode(2);
      }
    }
  }
  
  public void apply(AlertController paramAlertController)
  {
    if (mCustomTitleView != null)
    {
      paramAlertController.setCustomTitle(mCustomTitleView);
      if (mMessage != null) {
        paramAlertController.setMessage(mMessage);
      }
      if (mPositiveButtonText != null) {
        paramAlertController.setButton(-1, mPositiveButtonText, mPositiveButtonListener, null);
      }
      if (mNegativeButtonText != null) {
        paramAlertController.setButton(-2, mNegativeButtonText, mNegativeButtonListener, null);
      }
      if (mNeutralButtonText != null) {
        paramAlertController.setButton(-3, mNeutralButtonText, mNeutralButtonListener, null);
      }
      if ((mItems != null) || (mCursor != null) || (mAdapter != null)) {
        createListView(paramAlertController);
      }
      if (mView == null) {
        break label236;
      }
      if (!mViewSpacingSpecified) {
        break label227;
      }
      paramAlertController.setView(mView, mViewSpacingLeft, mViewSpacingTop, mViewSpacingRight, mViewSpacingBottom);
    }
    label227:
    label236:
    while (mViewLayoutResId == 0)
    {
      return;
      if (mTitle != null) {
        paramAlertController.setTitle(mTitle);
      }
      if (mIcon != null) {
        paramAlertController.setIcon(mIcon);
      }
      if (mIconId != 0) {
        paramAlertController.setIcon(mIconId);
      }
      if (mIconAttrId == 0) {
        break;
      }
      paramAlertController.setIcon(paramAlertController.getIconAttributeResId(mIconAttrId));
      break;
      paramAlertController.setView(mView);
      return;
    }
    paramAlertController.setView(mViewLayoutResId);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AlertController.AlertParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */