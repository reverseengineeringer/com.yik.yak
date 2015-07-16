.class public LEw;
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
    .line 115
    iput-object p1, p0, LEw;->a:Lcom/yik/yak/ui/fragment/DeveloperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 118
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, LAa;->a(Z)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method
