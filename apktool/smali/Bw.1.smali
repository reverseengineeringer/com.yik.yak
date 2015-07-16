.class public LBw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/yik/yak/ui/activity/PeekSearchActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, LBw;->b:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    iput-object p2, p0, LBw;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 207
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v3

    .line 210
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, LBw;->b:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v1

    iget-object v2, p0, LBw;->b:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, LBw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 211
    iget-object v0, p0, LBw;->b:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method
