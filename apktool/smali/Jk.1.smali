.class LJk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:LJi;


# direct methods
.method constructor <init>(LJi;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, LJk;->b:LJi;

    iput-object p2, p0, LJk;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, LJk;->b:LJi;

    iget-object v0, v0, LJi;->c:LJq;

    iget-object v1, p0, LJk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, LJq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    iget-object v1, p0, LJk;->b:LJi;

    iget-object v1, v1, LJi;->a:Landroid/content/Context;

    const-string v2, "Crashlytics failed to record event"

    invoke-static {v1, v2, v0}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
