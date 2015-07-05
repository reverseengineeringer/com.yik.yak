.class public LCz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/YakarmaActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/YakarmaActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, LCz;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v0, p0, LCz;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->a(Lcom/yik/yak/ui/activity/YakarmaActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 96
    iget-object v1, p0, LCz;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    iget-object v1, v1, Lcom/yik/yak/ui/activity/YakarmaActivity;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 97
    iget-object v0, p0, LCz;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->a(Lcom/yik/yak/ui/activity/YakarmaActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const-string v1, "scrollY"

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget-object v3, p0, LCz;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-static {v3}, Lcom/yik/yak/ui/activity/YakarmaActivity;->a(Lcom/yik/yak/ui/activity/YakarmaActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 98
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 99
    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 100
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 101
    return-void
.end method
