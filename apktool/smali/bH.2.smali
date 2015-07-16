.class LbH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LJR;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:LbG;


# direct methods
.method constructor <init>(LbG;LJR;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, LbH;->c:LbG;

    iput-object p2, p0, LbH;->a:LJR;

    iput-object p3, p0, LbH;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, LbH;->c:LbG;

    invoke-static {v0}, LbG;->a(LbG;)LJq;

    move-result-object v0

    check-cast v0, LbB;

    iget-object v1, p0, LbH;->a:LJR;

    iget-object v2, p0, LbH;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LbB;->a(LJR;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-static {}, Lbs;->b()Lbs;

    move-result-object v1

    invoke-virtual {v1}, Lbs;->C()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Crashlytics failed to set analytics settings data."

    invoke-static {v1, v2, v0}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
