.class final LFu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:LFv;


# direct methods
.method constructor <init>(LFv;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, LFu;->a:LFv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreferenceTreeClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v2, p0, LFu;->a:LFv;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Landroid/preference/Preference;

    invoke-interface {v2, v0, v1}, LFv;->a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
