.class public LzJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method public static a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 47
    sget-object v0, LzJ;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/yik/yak/YikYak;->a()Lcom/yik/yak/YikYak;

    move-result-object v0

    const-string v1, "DialogPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/YikYak;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, LzJ;->a:Landroid/content/SharedPreferences;

    .line 52
    :cond_0
    sget-object v0, LzJ;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LzJ;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 36
    invoke-static {}, LzJ;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 32
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, LzJ;->b(Ljava/lang/String;Z)V

    .line 33
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, LzJ;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    return-void
.end method
