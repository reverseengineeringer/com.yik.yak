.class public LCP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/YakarmaActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/YakarmaActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, LCP;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, LCP;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->a(Lcom/yik/yak/ui/activity/YakarmaActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 69
    iget-object v1, p0, LCP;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    iget-object v1, v1, Lcom/yik/yak/ui/activity/YakarmaActivity;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method
