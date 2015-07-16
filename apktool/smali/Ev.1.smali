.class public LEv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/fragment/DeveloperFragment;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/fragment/DeveloperFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, LEv;->a:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 107
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, LAa;->d(Z)V

    .line 108
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    iget-object v1, p0, LEv;->a:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    invoke-virtual {v1}, Lcom/yik/yak/ui/fragment/DeveloperFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, LAJ;->b(Landroid/content/Context;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method
