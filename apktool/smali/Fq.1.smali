.class public LFq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/PreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/PreferenceFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, LFq;->a:Lcom/yik/yak/ui/fragment/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, LFq;->a:Lcom/yik/yak/ui/fragment/PreferenceFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/PreferenceFragment;->b(Lcom/yik/yak/ui/fragment/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 79
    instance-of v0, v0, Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, LFq;->a:Lcom/yik/yak/ui/fragment/PreferenceFragment;

    invoke-static {v0}, Lcom/yik/yak/ui/fragment/PreferenceFragment;->b(Lcom/yik/yak/ui/fragment/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    .line 86
    :cond_0
    return v1
.end method
