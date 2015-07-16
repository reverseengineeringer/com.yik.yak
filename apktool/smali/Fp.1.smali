.class public LFp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/PreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/PreferenceFragment;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, LFp;->a:Lcom/yik/yak/ui/fragment/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, LFp;->a:Lcom/yik/yak/ui/fragment/PreferenceFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/PreferenceFragment;->b(Lcom/yik/yak/ui/fragment/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, LFp;->a:Lcom/yik/yak/ui/fragment/PreferenceFragment;

    invoke-static {v1}, Lcom/yik/yak/ui/fragment/PreferenceFragment;->b(Lcom/yik/yak/ui/fragment/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 70
    return-void
.end method
