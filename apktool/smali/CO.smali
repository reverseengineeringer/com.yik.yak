.class public LCO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/YakarmaActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/YakarmaActivity;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, LCO;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, LCO;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/YakarmaActivity;->a(Lcom/yik/yak/ui/activity/YakarmaActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 36
    iget-object v1, p0, LCO;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/YakarmaActivity;->b(Lcom/yik/yak/ui/activity/YakarmaActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    div-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 37
    iget-object v1, p0, LCO;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/YakarmaActivity;->c(Lcom/yik/yak/ui/activity/YakarmaActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 38
    return-void
.end method
